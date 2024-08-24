import 'dart:convert';

NoResponse noResponseFromJson(dynamic str) => NoResponse.fromJson(str);

String noResponseToJson(NoResponse data) => json.encode(data.toJson());

class NoResponse {
  NoResponse({
    this.status,
    this.message,
  });

  bool? status;
  String? message;

  NoResponse copyWith({
    bool? status,
    String? message,
  }) =>
      NoResponse(
        status: status ?? this.status,
        message: message ?? this.message,
      );

  factory NoResponse.fromJson(Map<String, dynamic> json) => NoResponse(
        status: json["status"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": status,
        "message": message,
      };
}
