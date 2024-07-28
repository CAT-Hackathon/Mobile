import 'package:equatable/equatable.dart';

class CvModel extends Equatable {

  final int id;
  final String name;

  const CvModel({required this.id, required this.name});

  factory CvModel.fromJson(Map<String, dynamic> json) => CvModel(id: json["id"], name: json['name']);



  @override
  List<Object> get props => [id,name];
}
