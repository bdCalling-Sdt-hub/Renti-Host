import 'dart:convert';

class OtpModel {
  bool? success;
  String? message;

  OtpModel({
    this.success,
    this.message,
  });

  factory OtpModel.fromRawJson(String str) => OtpModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OtpModel.fromJson(Map<String, dynamic> json) => OtpModel(
    success: json["success"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "message": message,
  };
}