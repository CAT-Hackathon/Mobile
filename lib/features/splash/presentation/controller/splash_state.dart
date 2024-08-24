part of 'splash_cubit.dart';

class SplashState extends Equatable {
  const SplashState({
    this.getUserStatus = CubitStatus.init,
    this.authModel = const AuthModel.empty(),
    this.status = CubitStatus.init,
    this.message = '',
  });
  final CubitStatus getUserStatus;
  final AuthModel authModel;
  final CubitStatus status;
  final String message;

  SplashState copyWith({
    CubitStatus? getUserStatus,
    AuthModel? authModel,
    CubitStatus? status,
    String? message,
  }) {
    return SplashState(
      getUserStatus: getUserStatus ?? this.getUserStatus,
      authModel: authModel ?? this.authModel,
      status: status ?? this.status,
      message: message ?? this.message,
    );
  }

  @override
  List<Object> get props => [
        getUserStatus,
        authModel,
        status,
        message,
        
      ];
}
