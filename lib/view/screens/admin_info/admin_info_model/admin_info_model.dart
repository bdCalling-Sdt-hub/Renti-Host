import 'dart:convert';

class AdminInfoModel {
  String? message;
  List<AdminDatum>? adminData;

  AdminInfoModel({
    this.message,
    this.adminData,
  });

  factory AdminInfoModel.fromRawJson(String str) => AdminInfoModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AdminInfoModel.fromJson(Map<String, dynamic> json) => AdminInfoModel(
    message: json["message"],
    adminData: json["adminData"] == null ? [] : List<AdminDatum>.from(json["adminData"]!.map((x) => AdminDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "adminData": adminData == null ? [] : List<dynamic>.from(adminData!.map((x) => x.toJson())),
  };
}

class AdminDatum {
  String? id;
  String? fullName;
  String? email;
  String? phoneNumber;
  Address? address;

  AdminDatum({
    this.id,
    this.fullName,
    this.email,
    this.phoneNumber,
    this.address,
  });

  factory AdminDatum.fromRawJson(String str) => AdminDatum.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AdminDatum.fromJson(Map<String, dynamic> json) => AdminDatum(
    id: json["_id"],
    fullName: json["fullName"],
    email: json["email"],
    phoneNumber: json["phoneNumber"],
    address: json["address"] == null ? null : Address.fromJson(json["address"]),
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "fullName": fullName,
    "email": email,
    "phoneNumber": phoneNumber,
    "address": address?.toJson(),
  };
}

class Address {
  String? city;
  String? state;
  String? country;
  String? line1;

  Address({
    this.city,
    this.state,
    this.country,
    this.line1,
  });

  factory Address.fromRawJson(String str) => Address.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    city: json["city"],
    state: json["state"],
    country: json["country"],
    line1: json["line1"],
  );

  Map<String, dynamic> toJson() => {
    "city": city,
    "state": state,
    "country": country,
    "line1": line1,
  };
}
