import 'package:equatable/equatable.dart';

class LearnBasicsModel extends Equatable {

  final int id;
  final String name;

  const LearnBasicsModel({required this.id, required this.name});

  factory LearnBasicsModel.fromJson(Map<String, dynamic> json) => LearnBasicsModel(id: json["id"], name: json['name']);



  @override
  List<Object> get props => [id,name];
}
