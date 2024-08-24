import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:met2ashara_app/core/data/client/api_client.dart';
import 'package:met2ashara_app/core/resources/type_defs.dart';
import 'package:met2ashara_app/core/secrets/remote_urls.dart';

abstract interface class AuthRemoteDatasource {
  // auth
  Future<Response> login(BodyMap body);

  // register
  Future<Response> register(BodyMap body);
  Future<Response> verifyPhone(BodyMap body);

  // forget password
  Future<Response> forgetPassword(String phone);
  Future<Response> resendCode(String phone);
  Future<Response> forgetPasswordResendCode(String phone);
}

@LazySingleton(as: AuthRemoteDatasource)
class AuthRemoteDataSourceImpl implements AuthRemoteDatasource {
  final ApiClient client;

  AuthRemoteDataSourceImpl(this.client);
  @override
  Future<Response> forgetPassword(String phone) async =>
      client.post(RemoteUrls.forgetPassword, data: {'phone' : phone});

  @override
  Future<Response> login(BodyMap body) async =>
      client.post(RemoteUrls.login, data: body);

  @override
  Future<Response> register(BodyMap body) async =>
      client.post(RemoteUrls.register, data: body);

  @override
  Future<Response> verifyPhone(BodyMap body) async =>
      client.post(RemoteUrls.verify, data: body);

  @override
  Future<Response> resendCode(String phone) async =>
      client.post(RemoteUrls.resendCode, data: {'phone': phone});

  @override
  Future<Response> forgetPasswordResendCode(String phone) async =>
      client.post(RemoteUrls.forgotPasswordResendCode, data: {'phone': phone});
}
