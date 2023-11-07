import 'dart:convert';

class ProfileModel {
  String? message;
  User? user;

  ProfileModel({
    this.message,
    this.user,
  });

  factory ProfileModel.fromRawJson(String str) => ProfileModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
    message: json["message"],
    user: json["user"] == null ? null : User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "user": user?.toJson(),
  };
}

class User {
  String? id;
  String? fullName;
  String? email;
  String? phoneNumber;
  String? gender;
  Address? address;
  String? dateOfBirth;
  String? password;
  List<String>? kyc;
  String? rfc;
  String? ine;
  String? image;
  BankInfo? bankInfo;
  String? role;
  bool? emailVerified;
  bool? approved;
  String? isBanned;
  dynamic oneTimeCode;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  String? stripeConnectAccountId;

  User({
    this.id,
    this.fullName,
    this.email,
    this.phoneNumber,
    this.gender,
    this.address,
    this.dateOfBirth,
    this.password,
    this.kyc,
    this.rfc,
    this.ine,
    this.image,
    this.bankInfo,
    this.role,
    this.emailVerified,
    this.approved,
    this.isBanned,
    this.oneTimeCode,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.stripeConnectAccountId,
  });

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["_id"],
    fullName: json["fullName"],
    email: json["email"],
    phoneNumber: json["phoneNumber"],
    gender: json["gender"],
    address: json["address"] == null ? null : Address.fromJson(json["address"]),
    dateOfBirth: json["dateOfBirth"],
    password: json["password"],
    kyc: json["KYC"] == null ? [] : List<String>.from(json["KYC"]!.map((x) => x)),
    rfc: json["RFC"],
    ine: json["ine"],
    image: json["image"],
    bankInfo: json["bankInfo"] == null ? null : BankInfo.fromJson(json["bankInfo"]),
    role: json["role"],
    emailVerified: json["emailVerified"],
    approved: json["approved"],
    isBanned: json["isBanned"],
    oneTimeCode: json["oneTimeCode"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    v: json["__v"],
    stripeConnectAccountId: json["stripeConnectAccountId"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "fullName": fullName,
    "email": email,
    "phoneNumber": phoneNumber,
    "gender": gender,
    "address": address?.toJson(),
    "dateOfBirth": dateOfBirth,
    "password": password,
    "KYC": kyc == null ? [] : List<dynamic>.from(kyc!.map((x) => x)),
    "RFC": rfc,
    "ine": ine,
    "image": image,
    "bankInfo": bankInfo?.toJson(),
    "role": role,
    "emailVerified": emailVerified,
    "approved": approved,
    "isBanned": isBanned,
    "oneTimeCode": oneTimeCode,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
    "stripeConnectAccountId": stripeConnectAccountId,
  };
}

class Address {
  String? city;
  String? country;
  String? line1;
  String? state;

  Address({
    this.city,
    this.country,
    this.line1,
    this.state,
  });

  factory Address.fromRawJson(String str) => Address.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    city: json["city"],
    country: json["country"],
    line1: json["line1"],
    state: json["state"],
  );

  Map<String, dynamic> toJson() => {
    "city": city,
    "country": country,
    "line1": line1,
    "state": state,
  };
}

class BankInfo {
  String? accountNumber;
  String? accountHolderName;
  String? accountHolderType;

  BankInfo({
    this.accountNumber,
    this.accountHolderName,
    this.accountHolderType,
  });

  factory BankInfo.fromRawJson(String str) => BankInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BankInfo.fromJson(Map<String, dynamic> json) => BankInfo(
    accountNumber: json["account_number"],
    accountHolderName: json["account_holder_name"],
    accountHolderType: json["account_holder_type"],
  );

  Map<String, dynamic> toJson() => {
    "account_number": accountNumber,
    "account_holder_name": accountHolderName,
    "account_holder_type": accountHolderType,
  };
}
