import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:met2ashara_app/core/data/error/failures.dart';


typedef FromJson<T> = T Function(Map<String, dynamic> body);

typedef ParamsMap = Map<String, String?>?;

typedef BodyMap = Map<String, dynamic>;

typedef FormDataMap = FormData?;

typedef DataResponse<T> = Future<Either<Failure, T>>;