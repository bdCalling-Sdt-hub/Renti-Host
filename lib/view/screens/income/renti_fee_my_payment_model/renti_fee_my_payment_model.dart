import 'dart:convert';

class RentiFeeMyPaymentModel {
  String? message;
  int? myPayment;
  int? rentiFee;
  List<UserPaymentList>? userPaymentList;

  RentiFeeMyPaymentModel({
    this.message,
    this.myPayment,
    this.rentiFee,
    this.userPaymentList,
  });

  factory RentiFeeMyPaymentModel.fromRawJson(String str) => RentiFeeMyPaymentModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RentiFeeMyPaymentModel.fromJson(Map<String, dynamic> json) => RentiFeeMyPaymentModel(
    message: json["message"],
    myPayment: json["myPayment"],
    rentiFee: json["rentiFee"],
    userPaymentList: json["userPaymentList"] == null ? [] : List<UserPaymentList>.from(json["userPaymentList"]!.map((x) => UserPaymentList.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "myPayment": myPayment,
    "rentiFee": rentiFee,
    "userPaymentList": userPaymentList == null ? [] : List<dynamic>.from(userPaymentList!.map((x) => x.toJson())),
  };
}

class UserPaymentList {
  Income? income;
  int? myPayment;
  int? stripeFee;
  int? rentiFee;

  UserPaymentList({
    this.income,
    this.myPayment,
    this.stripeFee,
    this.rentiFee,
  });

  factory UserPaymentList.fromRawJson(String str) => UserPaymentList.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserPaymentList.fromJson(Map<String, dynamic> json) => UserPaymentList(
    income: json["income"] == null ? null : Income.fromJson(json["income"]),
    myPayment: json["myPayment"],
    stripeFee: json["stripeFee"],
    rentiFee: json["rentiFee"],
  );

  Map<String, dynamic> toJson() => {
    "income": income?.toJson(),
    "myPayment": myPayment,
    "stripeFee": stripeFee,
    "rentiFee": rentiFee,
  };
}

class Income {
  String? id;
  PaymentData? paymentData;
  CarId? carId;
  RentId? rentId;

  Income({
    this.id,
    this.paymentData,
    this.carId,
    this.rentId,
  });

  factory Income.fromRawJson(String str) => Income.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Income.fromJson(Map<String, dynamic> json) => Income(
    id: json["_id"],
    paymentData: json["paymentData"] == null ? null : PaymentData.fromJson(json["paymentData"]),
    carId: json["carId"] == null ? null : CarId.fromJson(json["carId"]),
    rentId: json["rentId"] == null ? null : RentId.fromJson(json["rentId"]),
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "paymentData": paymentData?.toJson(),
    "carId": carId?.toJson(),
    "rentId": rentId?.toJson(),
  };
}

class CarId {
  String? id;
  String? carModelName;
  String? carLicenseNumber;
  List<String>? image;

  CarId({
    this.id,
    this.carModelName,
    this.carLicenseNumber,
    this.image,
  });

  factory CarId.fromRawJson(String str) => CarId.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CarId.fromJson(Map<String, dynamic> json) => CarId(
    id: json["_id"],
    carModelName: json["carModelName"],
    carLicenseNumber: json["carLicenseNumber"],
    image: json["image"] == null ? [] : List<String>.from(json["image"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "carModelName": carModelName,
    "carLicenseNumber": carLicenseNumber,
    "image": image == null ? [] : List<dynamic>.from(image!.map((x) => x)),
  };
}

class PaymentData {
  String? id;
  int? amount;
  int? amountCaptured;
  String? balanceTransaction;
  String? status;

  PaymentData({
    this.id,
    this.amount,
    this.amountCaptured,
    this.balanceTransaction,
    this.status,
  });

  factory PaymentData.fromRawJson(String str) => PaymentData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PaymentData.fromJson(Map<String, dynamic> json) => PaymentData(
    id: json["id"],
    amount: json["amount"],
    amountCaptured: json["amount_captured"],
    balanceTransaction: json["balance_transaction"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "amount": amount,
    "amount_captured": amountCaptured,
    "balance_transaction": balanceTransaction,
    "status": status,
  };
}

class RentId {
  String? id;
  String? rentTripNumber;
  DateTime? startDate;
  DateTime? endDate;
  String? payment;

  RentId({
    this.id,
    this.rentTripNumber,
    this.startDate,
    this.endDate,
    this.payment,
  });

  factory RentId.fromRawJson(String str) => RentId.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RentId.fromJson(Map<String, dynamic> json) => RentId(
    id: json["_id"],
    rentTripNumber: json["rentTripNumber"],
    startDate: json["startDate"] == null ? null : DateTime.parse(json["startDate"]),
    endDate: json["endDate"] == null ? null : DateTime.parse(json["endDate"]),
    payment: json["payment"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "rentTripNumber": rentTripNumber,
    "startDate": startDate?.toIso8601String(),
    "endDate": endDate?.toIso8601String(),
    "payment": payment,
  };
}
