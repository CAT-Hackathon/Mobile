import 'package:equatable/equatable.dart';

class AuthModel extends Equatable {

  final int id;
  final String name;

  const AuthModel({required this.id, required this.name});

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(id: json["id"], name: json['name']);



  @override
  List<Object> get props => [id,name];
}
