import 'package:equatable/equatable.dart';

class SearchModel extends Equatable {

  final int id;
  final String name;

  const SearchModel({required this.id, required this.name});

  factory SearchModel.fromJson(Map<String, dynamic> json) => SearchModel(id: json["id"], name: json['name']);



  @override
  List<Object> get props => [id,name];
}
