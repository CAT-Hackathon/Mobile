import 'package:injectable/injectable.dart';
import 'package:met2ashara_app/core/data/client/api_client.dart';
import 'package:met2ashara_app/core/data/error/error_handler.dart';
import 'package:met2ashara_app/core/data/local/local_data_source.dart';
import 'package:met2ashara_app/core/resources/no_response.dart';
import 'package:met2ashara_app/core/resources/type_defs.dart';
import 'package:met2ashara_app/core/services/injection.dart';
import 'package:met2ashara_app/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:met2ashara_app/features/auth/data/models/auth_model.dart';
import 'package:met2ashara_app/features/auth/domain/repository/auth_repository.dart';


@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl with HandlingException implements AuthRepository {
  final AuthRemoteDatasource authRemoteDatasource;
  final LocalDataSource localDataSource;

  AuthRepositoryImpl(this.authRemoteDatasource, this.localDataSource);
  @override
  DataResponse<NoResponse> forgetPassword(String phone) {
    return authRemoteDatasource.forgetPassword(phone).map(noResponseFromJson);
  }

  @override
  DataResponse<AuthModel> login(BodyMap body) {
    return authRemoteDatasource.login(body).map(authModelFromJson);
  }

  @override
  DataResponse<NoResponse> register(BodyMap body) {
    return authRemoteDatasource.register(body).map(noResponseFromJson);
  }

  @override
  DataResponse<NoResponse> resendCode(String phone) {
    return authRemoteDatasource.resendCode(phone).map(noResponseFromJson);
  }

  @override
  DataResponse<NoResponse> verifyPhoneNumber(BodyMap body) {
    return authRemoteDatasource.verifyPhone(body).map(noResponseFromJson);
  }
  
   @override
  void saveUserData(AuthModel authModel) {
    sl<ApiClient>().updateToken(authModel.accessToken);
    localDataSource.saveAuthData(authModel);
  }

  @override
  void clearUserData() {
    sl<ApiClient>().updateToken('');
    localDataSource.clearUserData();
  }

  @override
  AuthModel? getAuthData() => localDataSource.getAuthData();
}
