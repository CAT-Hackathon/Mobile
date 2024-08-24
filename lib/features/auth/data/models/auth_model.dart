import 'package:equatable/equatable.dart';
import 'package:met2ashara_app/features/auth/data/models/user_model.dart';

AuthModel authModelFromJson(dynamic json) => AuthModel.fromJson(json);

class AuthModel extends Equatable {
  final UserModel user;
  final List<String> roles;
  final String accessToken;
  final String tokenType;

  const AuthModel({
    required this.user,
    required this.roles,
    required this.accessToken,
    required this.tokenType,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      user: UserModel.fromJson(json['user']),
      roles: List<String>.from(json['roles']),
      accessToken: json['access_token'],
      tokenType: json['token_type'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user': user.toJson(),
      'roles': roles,
      'access_token': accessToken,
      'token_type': tokenType,
    };
  }

  const AuthModel.empty()
      : user = const UserModel.empty(),
        roles = const [],
        accessToken = '',
        tokenType = '';

  @override
  List<Object?> get props => [user, roles, accessToken, tokenType];
}
