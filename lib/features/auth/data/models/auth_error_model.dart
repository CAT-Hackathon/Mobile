import 'package:equatable/equatable.dart';

class AuthErrorResponse extends Equatable {
  final bool status;
  final String message;
  final Map<String, List<String>> errors;

  const AuthErrorResponse({
    required this.status,
    required this.message,
    required this.errors,
  });

  factory AuthErrorResponse.fromJson(Map<String, dynamic> json) {
    final errorsMap = <String, List<String>>{};
    json['errors'].forEach((key, value) {
      errorsMap[key] = List<String>.from(value);
    });

    return AuthErrorResponse(
      status: json['status'],
      message: json['message'],
      errors: errorsMap,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'message': message,
      'errors': errors,
    };
  }

  static AuthErrorResponse empty() {
    return const AuthErrorResponse(
      status: false,
      message: '',
      errors: {},
    );
  }

  @override
  List<Object?> get props => [status, message, errors];
}