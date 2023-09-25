import 'dart:convert';

class SignInResponseModel {
  String? message;
  User? user;
  String? accessToken;

  SignInResponseModel({
    this.message,
    this.user,
    this.accessToken,
  });

  factory SignInResponseModel.fromRawJson(String str) =>
      SignInResponseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SignInResponseModel.fromJson(Map<String, dynamic> json) =>
      SignInResponseModel(
        message: json["message"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        accessToken: json["accessToken"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "user": user?.toJson(),
        "accessToken": accessToken,
      };
}

class User {
  String? id;
  String? fullName;
  String? email;
  String? password;
  String? ine;
  String? role;
  bool? emailVerified;
  bool? approved;
  String? isBanned;
  String? oneTimeCode;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  String? kyc;
  String? rfc;
  String? address;
  String? creaditCardNumber;
  String? dateOfBirth;
  String? gender;
  String? image;
  String? phoneNumber;

  User({
    this.id,
    this.fullName,
    this.email,
    this.password,
    this.ine,
    this.role,
    this.emailVerified,
    this.approved,
    this.isBanned,
    this.oneTimeCode,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.kyc,
    this.rfc,
    this.address,
    this.creaditCardNumber,
    this.dateOfBirth,
    this.gender,
    this.image,
    this.phoneNumber,
  });

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["_id"],
        fullName: json["fullName"],
        email: json["email"],
        password: json["password"],
        ine: json["ine"],
        role: json["role"],
        emailVerified: json["emailVerified"],
        approved: json["approved"],
        isBanned: json["isBanned"],
        oneTimeCode: json["oneTimeCode"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        kyc: json["KYC"],
        rfc: json["RFC"],
        address: json["address"],
        creaditCardNumber: json["creaditCardNumber"],
        dateOfBirth: json["dateOfBirth"],
        gender: json["gender"],
        image: json["image"],
        phoneNumber: json["phoneNumber"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "fullName": fullName,
        "email": email,
        "password": password,
        "ine": ine,
        "role": role,
        "emailVerified": emailVerified,
        "approved": approved,
        "isBanned": isBanned,
        "oneTimeCode": oneTimeCode,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
        "KYC": kyc,
        "RFC": rfc,
        "address": address,
        "creaditCardNumber": creaditCardNumber,
        "dateOfBirth": dateOfBirth,
        "gender": gender,
        "image": image,
        "phoneNumber": phoneNumber,
      };
}
