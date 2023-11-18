import 'dart:convert';

class IncomeResponseModel {
  String? totalIncomeMessage;
  String? totalIncome;
  List<WeeklyIncomeList>? weeklyIncomeList;

  IncomeResponseModel({
    this.totalIncomeMessage,
    this.totalIncome,
    this.weeklyIncomeList,
  });

  factory IncomeResponseModel.fromRawJson(String str) => IncomeResponseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IncomeResponseModel.fromJson(Map<String, dynamic> json) => IncomeResponseModel(
    totalIncomeMessage: json["totalIncome_message"],
    totalIncome: json["totalIncome"].toString(),
    weeklyIncomeList: json["weeklyIncomeList"] == null ? [] : List<WeeklyIncomeList>.from(json["weeklyIncomeList"]!.map((x) => WeeklyIncomeList.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "totalIncome_message": totalIncomeMessage,
    "totalIncome": totalIncome,
    "weeklyIncomeList": weeklyIncomeList == null ? [] : List<dynamic>.from(weeklyIncomeList!.map((x) => x.toJson())),
  };
}

class WeeklyIncomeList {
  String? id;
  PaymentData? paymentData;
  CarId? carId;
  RentId? rentId;

  WeeklyIncomeList({
    this.id,
    this.paymentData,
    this.carId,
    this.rentId,
  });

  factory WeeklyIncomeList.fromRawJson(String str) => WeeklyIncomeList.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WeeklyIncomeList.fromJson(Map<String, dynamic> json) => WeeklyIncomeList(
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
  List<String>? image;

  CarId({
    this.id,
    this.carModelName,
    this.image,
  });

  factory CarId.fromRawJson(String str) => CarId.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CarId.fromJson(Map<String, dynamic> json) => CarId(
    id: json["_id"],
    carModelName: json["carModelName"],
    image: json["image"] == null ? [] : List<String>.from(json["image"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "carModelName": carModelName,
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

  RentId({
    this.id,
    this.rentTripNumber,
  });

  factory RentId.fromRawJson(String str) => RentId.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RentId.fromJson(Map<String, dynamic> json) => RentId(
    id: json["_id"],
    rentTripNumber: json["rentTripNumber"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "rentTripNumber": rentTripNumber,
  };
}
