import 'dart:convert';

class ReviewModel {
  String? message;
  List<Review>? review;

  ReviewModel({
    this.message,
    this.review,
  });

  factory ReviewModel.fromRawJson(String str) =>
      ReviewModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ReviewModel.fromJson(Map<String, dynamic> json) => ReviewModel(
        message: json["message"],
        review: json["review"] == null
            ? []
            : List<Review>.from(json["review"]!.map((x) => Review.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "review": review == null
            ? []
            : List<dynamic>.from(review!.map((x) => x.toJson())),
      };
}

class Review {
  String? id;
  UserId? userId;
  HostId? hostId;
  String? reviewer;
  int? rating;
  String? comment;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  Review({
    this.id,
    this.userId,
    this.hostId,
    this.reviewer,
    this.rating,
    this.comment,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory Review.fromRawJson(String str) => Review.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Review.fromJson(Map<String, dynamic> json) => Review(
        id: json["_id"],
        userId: json["userId"] == null ? null : UserId.fromJson(json["userId"]),
        hostId: json["hostId"] == null ? null : HostId.fromJson(json["hostId"]),
        reviewer: json["reviewer"],
        rating: json["rating"],
        comment: json["comment"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "userId": userId?.toJson(),
        "hostId": hostId?.toJson(),
        "reviewer": reviewer,
        "rating": rating,
        "comment": comment,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
      };
}

class HostId {
  String? id;
  String? fullName;
  String? email;
  String? phoneNumber;
  String? gender;
  String? address;
  String? dateOfBirth;
  String? password;
  List<String>? kyc;
  String? rfc;
  String? ine;
  String? image;
  String? role;
  bool? emailVerified;
  bool? approved;
  String? isBanned;
  dynamic oneTimeCode;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  HostId({
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
    this.role,
    this.emailVerified,
    this.approved,
    this.isBanned,
    this.oneTimeCode,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory HostId.fromRawJson(String str) => HostId.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HostId.fromJson(Map<String, dynamic> json) => HostId(
        id: json["_id"],
        fullName: json["fullName"],
        email: json["email"],
        phoneNumber: json["phoneNumber"],
        gender: json["gender"],
        address: json["address"],
        dateOfBirth: json["dateOfBirth"],
        password: json["password"],
        kyc: json["KYC"] == null
            ? []
            : List<String>.from(json["KYC"]!.map((x) => x)),
        rfc: json["RFC"],
        ine: json["ine"],
        image: json["image"],
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
        "RFC": rfc,
        "ine": ine,
        "image": image,
        "role": role,
        "emailVerified": emailVerified,
        "approved": approved,
        "isBanned": isBanned,
        "oneTimeCode": oneTimeCode,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
      };
}

class UserId {
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

  UserId({
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

  factory UserId.fromRawJson(String str) => UserId.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserId.fromJson(Map<String, dynamic> json) => UserId(
        id: json["_id"],
        fullName: json["fullName"],
        email: json["email"],
        phoneNumber: json["phoneNumber"],
        gender: json["gender"],
        address: json["address"],
        dateOfBirth: json["dateOfBirth"],
        password: json["password"],
        kyc: json["KYC"] == null
            ? []
            : List<dynamic>.from(json["KYC"]!.map((x) => x)),
        ine: json["ine"],
        image: json["image"] == null
            ? []
            : List<dynamic>.from(json["image"]!.map((x) => x)),
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
