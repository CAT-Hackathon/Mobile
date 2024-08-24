import 'package:equatable/equatable.dart';

class RegisterModel extends Equatable {
  final String phone;
  final String password;
  final String passwordConfirmation;
  final String name;

  const RegisterModel({required this.phone, required this.password, required this.passwordConfirmation, required this.name});


  Map<String, dynamic> toJson() {
    return {
      'name' : name,
      'phone': '2$phone',
      'password' : password,
      'password_confirmation' : passwordConfirmation
      };
  }

  @override
  List<Object?> get props => [name, phone, password, passwordConfirmation];
}
