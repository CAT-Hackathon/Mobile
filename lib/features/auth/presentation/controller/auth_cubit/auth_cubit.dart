import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:met2ashara_app/core/data/client/api_client.dart';
import 'package:met2ashara_app/core/resources/cubit_status.dart';
import 'package:met2ashara_app/core/services/injection.dart';
import 'package:met2ashara_app/features/auth/data/models/auth_model.dart';
import 'package:met2ashara_app/features/auth/data/models/login_model.dart';
import 'package:met2ashara_app/features/auth/data/models/register_model.dart';
import 'package:met2ashara_app/features/auth/domain/repository/auth_repository.dart';


part 'auth_state.dart';

@lazySingleton
class AuthCubit extends Cubit<AuthState> {
  final AuthRepository _repository;
  AuthCubit(this._repository) : super(const AuthState());
  
  Future<void> login(String phone, String password) async {
    emit(state.copyWith(authStatus: AuthStatus.loading));
    final response = await _repository.login(LoginModel(
      phone: phone,
      password: password,
    ).toJson());
    response.fold(
      (error) => emit(state.copyWith(authStatus: AuthStatus.failed, message: error.message)),
      (auth) {
        updateUserData(auth);
        emit(state.copyWith(authStatus: AuthStatus.authorized, auth: auth));
      },
    );
  }

  Future<void> register(RegisterModel account) async {
    emit(state.copyWith(authStatus: AuthStatus.loading));
    final response = await _repository.register(account.toJson());
    response.fold(
      (error) => emit(state.copyWith(authStatus: AuthStatus.failed, message: error.message)),
      (auth) {
        emit(state.copyWith(authStatus: AuthStatus.authorized,));
      },
    );
  }

Future<void> verifyPhone(String phone, String otp) async {
    emit(state.copyWith(resendCodeStatus: CubitStatus.loading, phone: phone));
    final response = await _repository.verifyPhoneNumber({'phone' : phone, 'code' : otp});
    response.fold(
      (error) => emit(state.copyWith(resendCodeStatus: CubitStatus.failed, message: error.message)),
      (code) => emit(state.copyWith(resendCodeStatus: CubitStatus.success)),
    );
  }

  Future<void> resendCode() async {
    emit(state.copyWith(resendCodeStatus: CubitStatus.loading, sendCodeStatus: CubitStatus.init));
    final response = await _repository.resendCode(state.phone);
    response.fold(
      (error) => emit(state.copyWith(resendCodeStatus: CubitStatus.failed, message: error.message)),
      (code) => emit(state.copyWith(resendCodeStatus: CubitStatus.success)),
    );
  }

  void updateUserData(AuthModel authModel) {
    sl<ApiClient>().updateToken(authModel.accessToken);
    _repository.saveUserData(authModel);
    final status = authModel == const AuthModel.empty() ? AuthStatus.unauthorized : AuthStatus.authorized;
    emit(state.copyWith(auth: authModel, authStatus: status));
  }

  Future<void> logout() async {
    _repository.clearUserData();
    emit(const AuthState());
  }
}
