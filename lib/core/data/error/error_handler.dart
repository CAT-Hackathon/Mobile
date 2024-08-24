
import 'dart:core';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:met2ashara_app/core/data/error/error_constant.dart';
import 'package:met2ashara_app/core/data/error/error_model.dart';
import 'package:met2ashara_app/core/data/error/failures.dart';
import 'package:met2ashara_app/core/resources/type_defs.dart';
import 'package:met2ashara_app/core/router/route_names.dart';
import 'package:met2ashara_app/core/router/router_config.dart';
import 'package:met2ashara_app/core/utils/toaster_util.dart';

mixin HandlingException {
  DataResponse<T> wrapHandlingException<T>({
    required T Function(dynamic json) jsonConvert,
    required Future<Response<dynamic>> Function() tryCall,
  }) async {
    try {
      final result = await tryCall();
      if (result.statusCode == ResponseCode.SUCCESS || result.statusCode == ResponseCode.NO_CONTENT) {
        // on success
        debugPrint(result.data.toString());
        return Right(jsonConvert(result.data));
      } else {
        // on failure
        return Left(ResponseStatusType.BAD_REQUEST.getFailure());
      }
    } catch (e) {
      debugPrint(e.toString());
      // on error
      return Left(ErrorHandler.handle(e).failure);
    }
  }
}

class ErrorHandler implements Exception {
  late Failure failure;
  ErrorHandler.handle(error) {
    if (error is DioException) {
      // dio error so its an error from response of the API or from dio itself
      failure = _handleError(error);
    } else {
      // default error
      print(error);
      failure = ServerFailure(message: error.toString(), statusCode: ResponseCode.BAD_REQUEST_Server);
    }
  }

  Failure _handleError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return ResponseStatusType.CONNECT_TIMEOUT.getFailure();
      case DioExceptionType.sendTimeout:
        return ResponseStatusType.SEND_TIMEOUT.getFailure();
      case DioExceptionType.receiveTimeout:
        return ResponseStatusType.RECEIVE_TIMEOUT.getFailure();
      case DioExceptionType.badResponse:
        switch (error.response?.statusCode) {
          case ResponseCode.UNAUTHORIZED:
            if (RouteConfigs.routerConfig.canPop()) {
              RouteConfigs.routerConfig.pop();
            }
            RouteConfigs.routerConfig.pushNamed(AppRoutes.login.name);
            Toaster.showToast(ErrorConstants.unauthorizedError);
            return UnauthenticatedFailure(message: ErrorConstants.unauthorizedError);
          case ResponseCode.BLOCKED:
            return UserBlockedFailure(message: ErrorConstants.blockedError);
          case ResponseCode.NOT_ALLOWED:
            return UserNotAllowedFailure(message: ErrorConstants.notAllowed);
          case ResponseCode.Bad_Content:
            return ServerFailure(
              message: ErrorMessageModel.fromJson(error.response?.data).statusMessage,
              statusCode: ResponseCode.Bad_Content,
            );
          case ResponseCode.BAD_REQUEST_Server:
            return ServerFailure(
              message: ErrorMessageModel.fromJson(error.response?.data).statusMessage,
              statusCode: ResponseCode.BAD_REQUEST_Server,
            );
          case ResponseCode.BAD_REQUEST:
            return ServerFailure(
              message: ErrorMessageModel.fromJson(error.response?.data).statusMessage,
              statusCode: ResponseCode.BAD_REQUEST,
            );
          case ResponseCode.UNKNOWN:
            return const ServerFailure(
              message: 'UN_kNOW_ERROR',
              statusCode: ResponseCode.UNKNOWN,
            );
          default:
            return ServerFailure(
              message: error.response?.data.toString() ?? '',
              statusCode: error.response?.statusCode ?? ResponseCode.BAD_REQUEST,
            );
        }
      case DioExceptionType.cancel:
        return ResponseStatusType.CANCEL.getFailure();
      case DioExceptionType.unknown:
        return ResponseStatusType.DEFAULT.getFailure();
      case DioExceptionType.badCertificate:
        return ResponseStatusType.BAD_REQUEST.getFailure();
      case DioExceptionType.connectionError:
        return ResponseStatusType.NO_INTERNET_CONNECTION.getFailure();
    }
  }
}

extension DioExceptionExtension on Future<Response> {
  DataResponse<T> map<T>(FromJson<T> jsonConvert) async {
    try {
      final result = await this;
      if (result.statusCode == ResponseCode.SUCCESS || result.statusCode == ResponseCode.NO_CONTENT) {
        // on success
        debugPrint(result.data.toString());
        return Right(jsonConvert(result.data));
      } else {
        // on failure
        return Left(ResponseStatusType.BAD_REQUEST.getFailure());
      }
    } catch (e) {
      debugPrint(e.toString());
      // on error
      return Left(ErrorHandler.handle(e).failure);
    }
  }
}
