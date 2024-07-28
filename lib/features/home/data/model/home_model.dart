import 'package:equatable/equatable.dart';

class HomeModel extends Equatable {

  final int id;
  final String name;

  const HomeModel({required this.id, required this.name});

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(id: json["id"], name: json['name']);



  @override
  List<Object> get props => [id,name];
}
