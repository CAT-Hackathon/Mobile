import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  final String statusMessage;
  final bool status;
  const ErrorMessageModel({required this.statusMessage, required this.status});
  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) {
    String error = "";
    if (json["errors"] is Map) {
      for (var item in (json["errors"] as Map<String, dynamic>).entries) {
        error = "${error.isEmpty ? "" : "$error \n"} ${item.value}";
      }
    } else {
      error = json["message"].toString();
    }
    return ErrorMessageModel(
      statusMessage: error,
      status: json["status"],
    );
  }

  @override
  List<Object?> get props => [statusMessage, status];
}