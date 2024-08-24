import 'package:met2ashara_app/core/resources/no_response.dart';
import 'package:met2ashara_app/core/resources/type_defs.dart';
import 'package:met2ashara_app/features/auth/data/models/auth_model.dart';

abstract class AuthRepository {
  DataResponse<AuthModel> login(BodyMap body);
  DataResponse<NoResponse> register(BodyMap body);
  DataResponse<NoResponse> verifyPhoneNumber(BodyMap body);
  DataResponse<NoResponse> resendCode(String phone);
  DataResponse<NoResponse> forgetPassword(String phone);
  void saveUserData(AuthModel authModel);
  void clearUserData();
  AuthModel? getAuthData();

}
