part of 'auth_cubit.dart';

class AuthState extends Equatable {
  const AuthState({
        this.sendCodeStatus = CubitStatus.init,

    this.resendCodeStatus = CubitStatus.init,
    this.forgetPasswordStatus = CubitStatus.init,
    this.resendForgetPasswordStatus = CubitStatus.init,
    this.verifyCodeStatus = CubitStatus.init,
    this.authStatus = AuthStatus.unauthorized,
    this.auth = const AuthModel.empty(),
    this.message = '',
    this.phone = '',
    this.verificationCode = '',
    this.resetToken = '',
  });

  final CubitStatus sendCodeStatus,
  resendCodeStatus,
      forgetPasswordStatus,
      resendForgetPasswordStatus,
      verifyCodeStatus;
  final AuthStatus authStatus;
  final AuthModel auth;
  final String message;
  final String phone;
  final String verificationCode, resetToken;

  AuthState copyWith({
    CubitStatus? sendCodeStatus,
    CubitStatus? resendCodeStatus,
    CubitStatus? forgetPasswordStatus,
    CubitStatus? resetPasswordStatus,
    CubitStatus? resendForgetPasswordStatus,
    CubitStatus? verifyCodeStatus,
    CubitStatus? deleteAccountStatus,
    AuthStatus? authStatus,
    AuthModel? auth,
    String? message,
    String? phone,
    String? verificationCode,
    String? resetToken,
  }) {
    return AuthState(
      sendCodeStatus: sendCodeStatus ?? this.sendCodeStatus,
      resendCodeStatus: resendCodeStatus ?? this.resendCodeStatus,
      forgetPasswordStatus: forgetPasswordStatus ?? this.forgetPasswordStatus,
      resendForgetPasswordStatus:
          resendForgetPasswordStatus ?? this.resendForgetPasswordStatus,
      verifyCodeStatus: verifyCodeStatus ?? this.verifyCodeStatus,
      authStatus: authStatus ?? this.authStatus,
      auth: auth ?? this.auth,
      message: message ?? this.message,
      phone: phone ?? this.phone,
      verificationCode: verificationCode ?? this.verificationCode,
      resetToken: resetToken ?? this.resetToken,
    );
  }

  @override
  List<Object> get props => [
    sendCodeStatus,
        resendCodeStatus,
        forgetPasswordStatus,
        resendForgetPasswordStatus,
        verifyCodeStatus,
        authStatus,
        auth,
        message,
        phone,
        verificationCode,
        resetToken,
      ];
}
