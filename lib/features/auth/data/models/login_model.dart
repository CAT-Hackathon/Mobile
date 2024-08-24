import 'package:equatable/equatable.dart';

class LoginModel extends Equatable {
  final String phone;
  final String password;

  const LoginModel({
    required this.phone,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    return {
      'phone': "2$phone",
      'password': password,
    };
  }

  @override
  List<Object?> get props => [phone, password,];
}