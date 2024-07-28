import 'package:equatable/equatable.dart';

class InterviewModel extends Equatable {

  final int id;
  final String name;

  const InterviewModel({required this.id, required this.name});

  factory InterviewModel.fromJson(Map<String, dynamic> json) => InterviewModel(id: json["id"], name: json['name']);



  @override
  List<Object> get props => [id,name];
}
