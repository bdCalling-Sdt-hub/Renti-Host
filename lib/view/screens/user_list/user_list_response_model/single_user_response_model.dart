import 'dart:convert';

class SingleUserResponseModel {
  String? message;
  UserDetails? userDetails;

  SingleUserResponseModel({
    this.message,
    this.userDetails,
  });

  factory SingleUserResponseModel.fromRawJson(String str) => SingleUserResponseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SingleUserResponseModel.fromJson(Map<String, dynamic> json) => SingleUserResponseModel(
    message: json["message"],
    userDetails: json["userDetails"] == null ? null : UserDetails.fromJson(json["userDetails"]),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "userDetails": userDetails?.toJson(),
  };
}

class UserDetails {
  String? id;
  String? fullName;
  String? email;
  String? phoneNumber;
  String? gender;
  String? address;
  String? dateOfBirth;
  String? password;
  List<dynamic>? kyc;
  String? ine;
  List<dynamic>? image;
  String? role;
  bool? emailVerified;
  bool? approved;
  String? isBanned;
  dynamic oneTimeCode;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  String? rfc;
  String? creaditCardNumber;

  UserDetails({
    this.id,
    this.fullName,
    this.email,
    this.phoneNumber,
    this.gender,
    this.address,
    this.dateOfBirth,
    this.password,
    this.kyc,
    this.ine,
    this.image,
    this.role,
    this.emailVerified,
    this.approved,
    this.isBanned,
    this.oneTimeCode,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.rfc,
    this.creaditCardNumber,
  });

  factory UserDetails.fromRawJson(String str) => UserDetails.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserDetails.fromJson(Map<String, dynamic> json) => UserDetails(
    id: json["_id"],
    fullName: json["fullName"],
    email: json["email"],
    phoneNumber: json["phoneNumber"],
    gender: json["gender"],
    address: json["address"],
    dateOfBirth: json["dateOfBirth"],
    password: json["password"],
    kyc: json["KYC"] == null ? [] : List<dynamic>.from(json["KYC"]!.map((x) => x)),
    ine: json["ine"],
    image: json["image"] == null ? [] : List<dynamic>.from(json["image"]!.map((x) => x)),
    role: json["role"],
    emailVerified: json["emailVerified"],
    approved: json["approved"],
    isBanned: json["isBanned"],
    oneTimeCode: json["oneTimeCode"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    v: json["__v"],
    rfc: json["RFC"],
    creaditCardNumber: json["creaditCardNumber"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "fullName": fullName,
    "email": email,
    "phoneNumber": phoneNumber,
    "gender": gender,
    "address": address,
    "dateOfBirth": dateOfBirth,
    "password": password,
    "KYC": kyc == null ? [] : List<dynamic>.from(kyc!.map((x) => x)),
    "ine": ine,
    "image": image == null ? [] : List<dynamic>.from(image!.map((x) => x)),
    "role": role,
    "emailVerified": emailVerified,
    "approved": approved,
    "isBanned": isBanned,
    "oneTimeCode": oneTimeCode,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
    "RFC": rfc,
    "creaditCardNumber": creaditCardNumber,
  };
}
