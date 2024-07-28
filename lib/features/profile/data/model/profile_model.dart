import 'package:equatable/equatable.dart';

class ProfileModel extends Equatable {

  final int id;
  final String name;

  const ProfileModel({required this.id, required this.name});

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(id: json["id"], name: json['name']);



  @override
  List<Object> get props => [id,name];
}
