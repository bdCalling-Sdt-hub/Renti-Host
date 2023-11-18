import 'dart:convert';

class ForgetPassModel {
  String? message;

  ForgetPassModel({
    this.message,
  });

  factory ForgetPassModel.fromRawJson(String str) => ForgetPassModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ForgetPassModel.fromJson(Map<String, dynamic> json) => ForgetPassModel(
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
  };
}
