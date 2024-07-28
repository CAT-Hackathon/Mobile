import 'package:equatable/equatable.dart';

class MentorsModel extends Equatable {

  final int id;
  final String name;

  const MentorsModel({required this.id, required this.name});

  factory MentorsModel.fromJson(Map<String, dynamic> json) => MentorsModel(id: json["id"], name: json['name']);



  @override
  List<Object> get props => [id,name];
}
