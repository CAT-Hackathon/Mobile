import 'package:equatable/equatable.dart';


class UserModel extends Equatable {
  final int id;
  final String? email;
  final String name;
  final String phone;
  final String? imageLink;

  const UserModel({
    required this.id,
    this.email,
    required this.name,
    required this.phone,
    this.imageLink,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      email: json['email'],
      name: json['name'],
      phone: json['phone'],
      imageLink: json['image_link'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'phone': phone,
      'image_link': imageLink,
    };
  }

  const UserModel.empty() :
    id = 0, name = '', phone =  '', email = '', imageLink = '';
  

  @override
  List<Object?> get props => [id, email, name, phone, imageLink];
}