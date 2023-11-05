import 'dart:convert';

class IncomeResponseModel {
  String? totalIncomeMessage;
  int? totalIncome;
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
    totalIncome: json["totalIncome"],
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
  UserId? userId;
  HostId? hostId;
  CarId? carId;
  RentId? rentId;
  bool? payout;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  WeeklyIncomeList({
    this.id,
    this.paymentData,
    this.userId,
    this.hostId,
    this.carId,
    this.rentId,
    this.payout,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory WeeklyIncomeList.fromRawJson(String str) => WeeklyIncomeList.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WeeklyIncomeList.fromJson(Map<String, dynamic> json) => WeeklyIncomeList(
    id: json["_id"],
    paymentData: json["paymentData"] == null ? null : PaymentData.fromJson(json["paymentData"]),
    userId: userIdValues.map[json["userId"]]!,
    hostId: hostIdValues.map[json["hostId"]]!,
    carId: json["carId"] == null ? null : CarId.fromJson(json["carId"]),
    rentId: rentIdValues.map[json["rentId"]]!,
    payout: json["payout"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "paymentData": paymentData?.toJson(),
    "userId": userIdValues.reverse[userId],
    "hostId": hostIdValues.reverse[hostId],
    "carId": carId?.toJson(),
    "rentId": rentIdValues.reverse[rentId],
    "payout": payout,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
  };
}

class CarId {
  Id? id;
  CarModelName? carModelName;
  List<String>? image;
  int? year;
  CarLicenseNumber? carLicenseNumber;
  String? carDescription;
  InsuranceStartDate? insuranceStartDate;
  InsuranceEndDate? insuranceEndDate;
  List<String>? kyc;
  CarColor? carColor;
  String? carDoors;
  String? carSeats;
  TotalRun? totalRun;
  String? hourlyRate;
  String? offerHourlyRate;
  RegistrationDate? registrationDate;
  int? popularity;
  GearType? gearType;
  CarType? carType;
  SpecialCharacteristics? specialCharacteristics;
  bool? activeReserve;
  TripStatus? tripStatus;
  HostId? carOwner;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  PaymentId? paymentId;

  CarId({
    this.id,
    this.carModelName,
    this.image,
    this.year,
    this.carLicenseNumber,
    this.carDescription,
    this.insuranceStartDate,
    this.insuranceEndDate,
    this.kyc,
    this.carColor,
    this.carDoors,
    this.carSeats,
    this.totalRun,
    this.hourlyRate,
    this.offerHourlyRate,
    this.registrationDate,
    this.popularity,
    this.gearType,
    this.carType,
    this.specialCharacteristics,
    this.activeReserve,
    this.tripStatus,
    this.carOwner,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.paymentId,
  });

  factory CarId.fromRawJson(String str) => CarId.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CarId.fromJson(Map<String, dynamic> json) => CarId(
    id: idValues.map[json["_id"]]!,
    carModelName: carModelNameValues.map[json["carModelName"]]!,
    image: json["image"] == null ? [] : List<String>.from(json["image"]!.map((x) => x)),
    year: json["year"],
    carLicenseNumber: carLicenseNumberValues.map[json["carLicenseNumber"]]!,
    carDescription: json["carDescription"],
    insuranceStartDate: insuranceStartDateValues.map[json["insuranceStartDate"]]!,
    insuranceEndDate: insuranceEndDateValues.map[json["insuranceEndDate"]]!,
    kyc: json["KYC"] == null ? [] : List<String>.from(json["KYC"]!.map((x) => x)),
    carColor: carColorValues.map[json["carColor"]]!,
    carDoors: json["carDoors"],
    carSeats: json["carSeats"],
    totalRun: totalRunValues.map[json["totalRun"]]!,
    hourlyRate: json["hourlyRate"],
    offerHourlyRate: json["offerHourlyRate"],
    registrationDate: registrationDateValues.map[json["registrationDate"]]!,
    popularity: json["popularity"],
    gearType: gearTypeValues.map[json["gearType"]]!,
    carType: carTypeValues.map[json["carType"]]!,
    specialCharacteristics: specialCharacteristicsValues.map[json["specialCharacteristics"]]!,
    activeReserve: json["activeReserve"],
    tripStatus: tripStatusValues.map[json["tripStatus"]]!,
    carOwner: hostIdValues.map[json["carOwner"]]!,
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    v: json["__v"],
    paymentId: paymentIdValues.map[json["paymentId"]]!,
  );

  Map<String, dynamic> toJson() => {
    "_id": idValues.reverse[id],
    "carModelName": carModelNameValues.reverse[carModelName],
    "image": image == null ? [] : List<dynamic>.from(image!.map((x) => x)),
    "year": year,
    "carLicenseNumber": carLicenseNumberValues.reverse[carLicenseNumber],
    "carDescription": carDescription,
    "insuranceStartDate": insuranceStartDateValues.reverse[insuranceStartDate],
    "insuranceEndDate": insuranceEndDateValues.reverse[insuranceEndDate],
    "KYC": kyc == null ? [] : List<dynamic>.from(kyc!.map((x) => x)),
    "carColor": carColorValues.reverse[carColor],
    "carDoors": carDoors,
    "carSeats": carSeats,
    "totalRun": totalRunValues.reverse[totalRun],
    "hourlyRate": hourlyRate,
    "offerHourlyRate": offerHourlyRate,
    "registrationDate": registrationDateValues.reverse[registrationDate],
    "popularity": popularity,
    "gearType": gearTypeValues.reverse[gearType],
    "carType": carTypeValues.reverse[carType],
    "specialCharacteristics": specialCharacteristicsValues.reverse[specialCharacteristics],
    "activeReserve": activeReserve,
    "tripStatus": tripStatusValues.reverse[tripStatus],
    "carOwner": hostIdValues.reverse[carOwner],
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
    "paymentId": paymentIdValues.reverse[paymentId],
  };
}

enum CarColor {
  BLACK
}

final carColorValues = EnumValues({
  "Black": CarColor.BLACK
});

enum CarLicenseNumber {
  AVC1234567
}

final carLicenseNumberValues = EnumValues({
  "AVC1234567": CarLicenseNumber.AVC1234567
});

enum CarModelName {
  TOYOTA_X_COROLLA
}

final carModelNameValues = EnumValues({
  "Toyota X Corolla": CarModelName.TOYOTA_X_COROLLA
});

enum HostId {
  THE_653_B38_EA126_C635288208095
}

final hostIdValues = EnumValues({
  "653b38ea126c635288208095": HostId.THE_653_B38_EA126_C635288208095
});

enum CarType {
  LUXURY
}

final carTypeValues = EnumValues({
  "Luxury": CarType.LUXURY
});

enum GearType {
  MANUAL
}

final gearTypeValues = EnumValues({
  "Manual": GearType.MANUAL
});

enum Id {
  THE_653_CE296_FD0_AF96_EB7_A58082
}

final idValues = EnumValues({
  "653ce296fd0af96eb7a58082": Id.THE_653_CE296_FD0_AF96_EB7_A58082
});

enum InsuranceEndDate {
  THE_22082023
}

final insuranceEndDateValues = EnumValues({
  "22-08-2023": InsuranceEndDate.THE_22082023
});

enum InsuranceStartDate {
  THE_22012023
}

final insuranceStartDateValues = EnumValues({
  "22-01-2023": InsuranceStartDate.THE_22012023
});

enum PaymentId {
  THE_654634_A9_B6_B50_D5_C824667_DA
}

final paymentIdValues = EnumValues({
  "654634a9b6b50d5c824667da": PaymentId.THE_654634_A9_B6_B50_D5_C824667_DA
});

enum RegistrationDate {
  THE_22082023
}

final registrationDateValues = EnumValues({
  "22-08-2023 ": RegistrationDate.THE_22082023
});

enum SpecialCharacteristics {
  GPS
}

final specialCharacteristicsValues = EnumValues({
  "GPS": SpecialCharacteristics.GPS
});

enum TotalRun {
  THE_50_KM
}

final totalRunValues = EnumValues({
  "50 km": TotalRun.THE_50_KM
});

enum TripStatus {
  PENDING
}

final tripStatusValues = EnumValues({
  "Pending": TripStatus.PENDING
});

class PaymentData {
  String? id;
  Object? object;
  int? amount;
  int? amountCaptured;
  int? amountRefunded;
  dynamic application;
  dynamic applicationFee;
  dynamic applicationFeeAmount;
  String? balanceTransaction;
  BillingDetails? billingDetails;
  CalculatedStatementDescriptor? calculatedStatementDescriptor;
  bool? captured;
  int? created;
  Currency? currency;
  String? customer;
  Description? description;
  dynamic destination;
  dynamic dispute;
  bool? disputed;
  dynamic failureBalanceTransaction;
  dynamic failureCode;
  dynamic failureMessage;
  dynamic invoice;
  bool? livemode;
  dynamic onBehalfOf;
  dynamic order;
  Outcome? outcome;
  bool? paid;
  dynamic paymentIntent;
  String? paymentMethod;
  PaymentMethodDetails? paymentMethodDetails;
  ReceiptEmail? receiptEmail;
  dynamic receiptNumber;
  String? receiptUrl;
  bool? refunded;
  dynamic review;
  Shipping? shipping;
  Source? source;
  dynamic sourceTransfer;
  dynamic statementDescriptor;
  dynamic statementDescriptorSuffix;
  PaymentDataStatus? status;
  dynamic transferData;
  TransferGroup? transferGroup;

  PaymentData({
    this.id,
    this.object,
    this.amount,
    this.amountCaptured,
    this.amountRefunded,
    this.application,
    this.applicationFee,
    this.applicationFeeAmount,
    this.balanceTransaction,
    this.billingDetails,
    this.calculatedStatementDescriptor,
    this.captured,
    this.created,
    this.currency,
    this.customer,
    this.description,
    this.destination,
    this.dispute,
    this.disputed,
    this.failureBalanceTransaction,
    this.failureCode,
    this.failureMessage,
    this.invoice,
    this.livemode,
    this.onBehalfOf,
    this.order,
    this.outcome,
    this.paid,
    this.paymentIntent,
    this.paymentMethod,
    this.paymentMethodDetails,
    this.receiptEmail,
    this.receiptNumber,
    this.receiptUrl,
    this.refunded,
    this.review,
    this.shipping,
    this.source,
    this.sourceTransfer,
    this.statementDescriptor,
    this.statementDescriptorSuffix,
    this.status,
    this.transferData,
    this.transferGroup,
  });

  factory PaymentData.fromRawJson(String str) => PaymentData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PaymentData.fromJson(Map<String, dynamic> json) => PaymentData(
    id: json["id"],
    object: objectValues.map[json["object"]]!,
    amount: json["amount"],
    amountCaptured: json["amount_captured"],
    amountRefunded: json["amount_refunded"],
    application: json["application"],
    applicationFee: json["application_fee"],
    applicationFeeAmount: json["application_fee_amount"],
    balanceTransaction: json["balance_transaction"],
    billingDetails: json["billing_details"] == null ? null : BillingDetails.fromJson(json["billing_details"]),
    calculatedStatementDescriptor: calculatedStatementDescriptorValues.map[json["calculated_statement_descriptor"]]!,
    captured: json["captured"],
    created: json["created"],
    currency: currencyValues.map[json["currency"]]!,
    customer: json["customer"],
    description: descriptionValues.map[json["description"]]!,
    destination: json["destination"],
    dispute: json["dispute"],
    disputed: json["disputed"],
    failureBalanceTransaction: json["failure_balance_transaction"],
    failureCode: json["failure_code"],
    failureMessage: json["failure_message"],
    invoice: json["invoice"],
    livemode: json["livemode"],
    onBehalfOf: json["on_behalf_of"],
    order: json["order"],
    outcome: json["outcome"] == null ? null : Outcome.fromJson(json["outcome"]),
    paid: json["paid"],
    paymentIntent: json["payment_intent"],
    paymentMethod: json["payment_method"],
    paymentMethodDetails: json["payment_method_details"] == null ? null : PaymentMethodDetails.fromJson(json["payment_method_details"]),
    receiptEmail: receiptEmailValues.map[json["receipt_email"]]!,
    receiptNumber: json["receipt_number"],
    receiptUrl: json["receipt_url"],
    refunded: json["refunded"],
    review: json["review"],
    shipping: json["shipping"] == null ? null : Shipping.fromJson(json["shipping"]),
    source: json["source"] == null ? null : Source.fromJson(json["source"]),
    sourceTransfer: json["source_transfer"],
    statementDescriptor: json["statement_descriptor"],
    statementDescriptorSuffix: json["statement_descriptor_suffix"],
    status: paymentDataStatusValues.map[json["status"]]!,
    transferData: json["transfer_data"],
    transferGroup: transferGroupValues.map[json["transfer_group"]]!,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "object": objectValues.reverse[object],
    "amount": amount,
    "amount_captured": amountCaptured,
    "amount_refunded": amountRefunded,
    "application": application,
    "application_fee": applicationFee,
    "application_fee_amount": applicationFeeAmount,
    "balance_transaction": balanceTransaction,
    "billing_details": billingDetails?.toJson(),
    "calculated_statement_descriptor": calculatedStatementDescriptorValues.reverse[calculatedStatementDescriptor],
    "captured": captured,
    "created": created,
    "currency": currencyValues.reverse[currency],
    "customer": customer,
    "description": descriptionValues.reverse[description],
    "destination": destination,
    "dispute": dispute,
    "disputed": disputed,
    "failure_balance_transaction": failureBalanceTransaction,
    "failure_code": failureCode,
    "failure_message": failureMessage,
    "invoice": invoice,
    "livemode": livemode,
    "on_behalf_of": onBehalfOf,
    "order": order,
    "outcome": outcome?.toJson(),
    "paid": paid,
    "payment_intent": paymentIntent,
    "payment_method": paymentMethod,
    "payment_method_details": paymentMethodDetails?.toJson(),
    "receipt_email": receiptEmailValues.reverse[receiptEmail],
    "receipt_number": receiptNumber,
    "receipt_url": receiptUrl,
    "refunded": refunded,
    "review": review,
    "shipping": shipping?.toJson(),
    "source": source?.toJson(),
    "source_transfer": sourceTransfer,
    "statement_descriptor": statementDescriptor,
    "statement_descriptor_suffix": statementDescriptorSuffix,
    "status": paymentDataStatusValues.reverse[status],
    "transfer_data": transferData,
    "transfer_group": transferGroupValues.reverse[transferGroup],
  };
}

class BillingDetails {
  Address? address;
  dynamic email;
  dynamic name;
  dynamic phone;

  BillingDetails({
    this.address,
    this.email,
    this.name,
    this.phone,
  });

  factory BillingDetails.fromRawJson(String str) => BillingDetails.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BillingDetails.fromJson(Map<String, dynamic> json) => BillingDetails(
    address: json["address"] == null ? null : Address.fromJson(json["address"]),
    email: json["email"],
    name: json["name"],
    phone: json["phone"],
  );

  Map<String, dynamic> toJson() => {
    "address": address?.toJson(),
    "email": email,
    "name": name,
    "phone": phone,
  };
}

class Address {
  dynamic city;
  Country? country;
  dynamic line1;
  dynamic line2;
  dynamic postalCode;
  dynamic state;

  Address({
    this.city,
    this.country,
    this.line1,
    this.line2,
    this.postalCode,
    this.state,
  });

  factory Address.fromRawJson(String str) => Address.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    city: json["city"],
    country: countryValues.map[json["country"]]!,
    line1: json["line1"],
    line2: json["line2"],
    postalCode: json["postal_code"],
    state: json["state"],
  );

  Map<String, dynamic> toJson() => {
    "city": city,
    "country": countryValues.reverse[country],
    "line1": line1,
    "line2": line2,
    "postal_code": postalCode,
    "state": state,
  };
}

enum Country {
  US
}

final countryValues = EnumValues({
  "US": Country.US
});

enum CalculatedStatementDescriptor {
  STRIPE
}

final calculatedStatementDescriptorValues = EnumValues({
  "Stripe": CalculatedStatementDescriptor.STRIPE
});

enum Currency {
  USD
}

final currencyValues = EnumValues({
  "usd": Currency.USD
});

enum Description {
  PURCHASE_PRODUCT_TOYOTA_X_COROLLA
}

final descriptionValues = EnumValues({
  "Purchase product Toyota X Corolla": Description.PURCHASE_PRODUCT_TOYOTA_X_COROLLA
});

enum Object {
  CHARGE
}

final objectValues = EnumValues({
  "charge": Object.CHARGE
});

class Outcome {
  NetworkStatus? networkStatus;
  dynamic reason;
  RiskLevel? riskLevel;
  int? riskScore;
  SellerMessage? sellerMessage;
  OutcomeType? type;

  Outcome({
    this.networkStatus,
    this.reason,
    this.riskLevel,
    this.riskScore,
    this.sellerMessage,
    this.type,
  });

  factory Outcome.fromRawJson(String str) => Outcome.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Outcome.fromJson(Map<String, dynamic> json) => Outcome(
    networkStatus: networkStatusValues.map[json["network_status"]]!,
    reason: json["reason"],
    riskLevel: riskLevelValues.map[json["risk_level"]]!,
    riskScore: json["risk_score"],
    sellerMessage: sellerMessageValues.map[json["seller_message"]]!,
    type: outcomeTypeValues.map[json["type"]]!,
  );

  Map<String, dynamic> toJson() => {
    "network_status": networkStatusValues.reverse[networkStatus],
    "reason": reason,
    "risk_level": riskLevelValues.reverse[riskLevel],
    "risk_score": riskScore,
    "seller_message": sellerMessageValues.reverse[sellerMessage],
    "type": outcomeTypeValues.reverse[type],
  };
}

enum NetworkStatus {
  APPROVED_BY_NETWORK
}

final networkStatusValues = EnumValues({
  "approved_by_network": NetworkStatus.APPROVED_BY_NETWORK
});

enum RiskLevel {
  NORMAL
}

final riskLevelValues = EnumValues({
  "normal": RiskLevel.NORMAL
});

enum SellerMessage {
  PAYMENT_COMPLETE
}

final sellerMessageValues = EnumValues({
  "Payment complete.": SellerMessage.PAYMENT_COMPLETE
});

enum OutcomeType {
  AUTHORIZED
}

final outcomeTypeValues = EnumValues({
  "authorized": OutcomeType.AUTHORIZED
});

class PaymentMethodDetails {
  Card? card;
  ObjectEnum? type;

  PaymentMethodDetails({
    this.card,
    this.type,
  });

  factory PaymentMethodDetails.fromRawJson(String str) => PaymentMethodDetails.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PaymentMethodDetails.fromJson(Map<String, dynamic> json) => PaymentMethodDetails(
    card: json["card"] == null ? null : Card.fromJson(json["card"]),
    type: objectEnumValues.map[json["type"]]!,
  );

  Map<String, dynamic> toJson() => {
    "card": card?.toJson(),
    "type": objectEnumValues.reverse[type],
  };
}

class Card {
  int? amountAuthorized;
  NetworkEnum? brand;
  Checks? checks;
  Country? country;
  int? expMonth;
  int? expYear;
  ExtendedAuthorization? extendedAuthorization;
  Fingerprint? fingerprint;
  Funding? funding;
  ExtendedAuthorization? incrementalAuthorization;
  dynamic installments;
  String? last4;
  dynamic mandate;
  ExtendedAuthorization? multicapture;
  NetworkEnum? network;
  NetworkToken? networkToken;
  Overcapture? overcapture;
  dynamic threeDSecure;
  dynamic wallet;

  Card({
    this.amountAuthorized,
    this.brand,
    this.checks,
    this.country,
    this.expMonth,
    this.expYear,
    this.extendedAuthorization,
    this.fingerprint,
    this.funding,
    this.incrementalAuthorization,
    this.installments,
    this.last4,
    this.mandate,
    this.multicapture,
    this.network,
    this.networkToken,
    this.overcapture,
    this.threeDSecure,
    this.wallet,
  });

  factory Card.fromRawJson(String str) => Card.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Card.fromJson(Map<String, dynamic> json) => Card(
    amountAuthorized: json["amount_authorized"],
    brand: networkEnumValues.map[json["brand"]]!,
    checks: json["checks"] == null ? null : Checks.fromJson(json["checks"]),
    country: countryValues.map[json["country"]]!,
    expMonth: json["exp_month"],
    expYear: json["exp_year"],
    extendedAuthorization: json["extended_authorization"] == null ? null : ExtendedAuthorization.fromJson(json["extended_authorization"]),
    fingerprint: fingerprintValues.map[json["fingerprint"]]!,
    funding: fundingValues.map[json["funding"]]!,
    incrementalAuthorization: json["incremental_authorization"] == null ? null : ExtendedAuthorization.fromJson(json["incremental_authorization"]),
    installments: json["installments"],
    last4: json["last4"],
    mandate: json["mandate"],
    multicapture: json["multicapture"] == null ? null : ExtendedAuthorization.fromJson(json["multicapture"]),
    network: networkEnumValues.map[json["network"]]!,
    networkToken: json["network_token"] == null ? null : NetworkToken.fromJson(json["network_token"]),
    overcapture: json["overcapture"] == null ? null : Overcapture.fromJson(json["overcapture"]),
    threeDSecure: json["three_d_secure"],
    wallet: json["wallet"],
  );

  Map<String, dynamic> toJson() => {
    "amount_authorized": amountAuthorized,
    "brand": networkEnumValues.reverse[brand],
    "checks": checks?.toJson(),
    "country": countryValues.reverse[country],
    "exp_month": expMonth,
    "exp_year": expYear,
    "extended_authorization": extendedAuthorization?.toJson(),
    "fingerprint": fingerprintValues.reverse[fingerprint],
    "funding": fundingValues.reverse[funding],
    "incremental_authorization": incrementalAuthorization?.toJson(),
    "installments": installments,
    "last4": last4,
    "mandate": mandate,
    "multicapture": multicapture?.toJson(),
    "network": networkEnumValues.reverse[network],
    "network_token": networkToken?.toJson(),
    "overcapture": overcapture?.toJson(),
    "three_d_secure": threeDSecure,
    "wallet": wallet,
  };
}

enum NetworkEnum {
  VISA
}

final networkEnumValues = EnumValues({
  "visa": NetworkEnum.VISA
});

class Checks {
  dynamic addressLine1Check;
  dynamic addressPostalCodeCheck;
  CvcCheck? cvcCheck;

  Checks({
    this.addressLine1Check,
    this.addressPostalCodeCheck,
    this.cvcCheck,
  });

  factory Checks.fromRawJson(String str) => Checks.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Checks.fromJson(Map<String, dynamic> json) => Checks(
    addressLine1Check: json["address_line1_check"],
    addressPostalCodeCheck: json["address_postal_code_check"],
    cvcCheck: cvcCheckValues.map[json["cvc_check"]]!,
  );

  Map<String, dynamic> toJson() => {
    "address_line1_check": addressLine1Check,
    "address_postal_code_check": addressPostalCodeCheck,
    "cvc_check": cvcCheckValues.reverse[cvcCheck],
  };
}

enum CvcCheck {
  PASS
}

final cvcCheckValues = EnumValues({
  "pass": CvcCheck.PASS
});

class ExtendedAuthorization {
  ExtendedAuthorizationStatus? status;

  ExtendedAuthorization({
    this.status,
  });

  factory ExtendedAuthorization.fromRawJson(String str) => ExtendedAuthorization.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ExtendedAuthorization.fromJson(Map<String, dynamic> json) => ExtendedAuthorization(
    status: extendedAuthorizationStatusValues.map[json["status"]]!,
  );

  Map<String, dynamic> toJson() => {
    "status": extendedAuthorizationStatusValues.reverse[status],
  };
}

enum ExtendedAuthorizationStatus {
  DISABLED,
  UNAVAILABLE
}

final extendedAuthorizationStatusValues = EnumValues({
  "disabled": ExtendedAuthorizationStatus.DISABLED,
  "unavailable": ExtendedAuthorizationStatus.UNAVAILABLE
});

enum Fingerprint {
  THE_8_PA7_AVG_T_XCNGH4_P_Y,
  TJ_M_GYIH2_E_KF_VON_YO
}

final fingerprintValues = EnumValues({
  "8pa7avgTXcngh4pY": Fingerprint.THE_8_PA7_AVG_T_XCNGH4_P_Y,
  "TjMGyih2eKFVonYo": Fingerprint.TJ_M_GYIH2_E_KF_VON_YO
});

enum Funding {
  CREDIT,
  DEBIT
}

final fundingValues = EnumValues({
  "credit": Funding.CREDIT,
  "debit": Funding.DEBIT
});

class NetworkToken {
  bool? used;

  NetworkToken({
    this.used,
  });

  factory NetworkToken.fromRawJson(String str) => NetworkToken.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NetworkToken.fromJson(Map<String, dynamic> json) => NetworkToken(
    used: json["used"],
  );

  Map<String, dynamic> toJson() => {
    "used": used,
  };
}

class Overcapture {
  int? maximumAmountCapturable;
  ExtendedAuthorizationStatus? status;

  Overcapture({
    this.maximumAmountCapturable,
    this.status,
  });

  factory Overcapture.fromRawJson(String str) => Overcapture.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Overcapture.fromJson(Map<String, dynamic> json) => Overcapture(
    maximumAmountCapturable: json["maximum_amount_capturable"],
    status: extendedAuthorizationStatusValues.map[json["status"]]!,
  );

  Map<String, dynamic> toJson() => {
    "maximum_amount_capturable": maximumAmountCapturable,
    "status": extendedAuthorizationStatusValues.reverse[status],
  };
}

enum ObjectEnum {
  CARD
}

final objectEnumValues = EnumValues({
  "card": ObjectEnum.CARD
});

enum ReceiptEmail {
  FARVEZHOSSEN101_GMAIL_COM
}

final receiptEmailValues = EnumValues({
  "farvezhossen101@gmail.com": ReceiptEmail.FARVEZHOSSEN101_GMAIL_COM
});

class Shipping {
  Address? address;
  dynamic carrier;
  Name? name;
  dynamic phone;
  dynamic trackingNumber;

  Shipping({
    this.address,
    this.carrier,
    this.name,
    this.phone,
    this.trackingNumber,
  });

  factory Shipping.fromRawJson(String str) => Shipping.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Shipping.fromJson(Map<String, dynamic> json) => Shipping(
    address: json["address"] == null ? null : Address.fromJson(json["address"]),
    carrier: json["carrier"],
    name: nameValues.map[json["name"]]!,
    phone: json["phone"],
    trackingNumber: json["tracking_number"],
  );

  Map<String, dynamic> toJson() => {
    "address": address?.toJson(),
    "carrier": carrier,
    "name": nameValues.reverse[name],
    "phone": phone,
    "tracking_number": trackingNumber,
  };
}

enum Name {
  JOHN_DOE
}

final nameValues = EnumValues({
  "John Doe": Name.JOHN_DOE
});

class Source {
  String? id;
  ObjectEnum? object;
  dynamic addressCity;
  dynamic addressCountry;
  dynamic addressLine1;
  dynamic addressLine1Check;
  dynamic addressLine2;
  dynamic addressState;
  dynamic addressZip;
  dynamic addressZipCheck;
  SourceBrand? brand;
  Country? country;
  String? customer;
  CvcCheck? cvcCheck;
  dynamic dynamicLast4;
  int? expMonth;
  int? expYear;
  Fingerprint? fingerprint;
  Funding? funding;
  String? last4;
  dynamic name;
  dynamic tokenizationMethod;
  dynamic wallet;

  Source({
    this.id,
    this.object,
    this.addressCity,
    this.addressCountry,
    this.addressLine1,
    this.addressLine1Check,
    this.addressLine2,
    this.addressState,
    this.addressZip,
    this.addressZipCheck,
    this.brand,
    this.country,
    this.customer,
    this.cvcCheck,
    this.dynamicLast4,
    this.expMonth,
    this.expYear,
    this.fingerprint,
    this.funding,
    this.last4,
    this.name,
    this.tokenizationMethod,
    this.wallet,
  });

  factory Source.fromRawJson(String str) => Source.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Source.fromJson(Map<String, dynamic> json) => Source(
    id: json["id"],
    object: objectEnumValues.map[json["object"]]!,
    addressCity: json["address_city"],
    addressCountry: json["address_country"],
    addressLine1: json["address_line1"],
    addressLine1Check: json["address_line1_check"],
    addressLine2: json["address_line2"],
    addressState: json["address_state"],
    addressZip: json["address_zip"],
    addressZipCheck: json["address_zip_check"],
    brand: sourceBrandValues.map[json["brand"]]!,
    country: countryValues.map[json["country"]]!,
    customer: json["customer"],
    cvcCheck: cvcCheckValues.map[json["cvc_check"]]!,
    dynamicLast4: json["dynamic_last4"],
    expMonth: json["exp_month"],
    expYear: json["exp_year"],
    fingerprint: fingerprintValues.map[json["fingerprint"]]!,
    funding: fundingValues.map[json["funding"]]!,
    last4: json["last4"],
    name: json["name"],
    tokenizationMethod: json["tokenization_method"],
    wallet: json["wallet"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "object": objectEnumValues.reverse[object],
    "address_city": addressCity,
    "address_country": addressCountry,
    "address_line1": addressLine1,
    "address_line1_check": addressLine1Check,
    "address_line2": addressLine2,
    "address_state": addressState,
    "address_zip": addressZip,
    "address_zip_check": addressZipCheck,
    "brand": sourceBrandValues.reverse[brand],
    "country": countryValues.reverse[country],
    "customer": customer,
    "cvc_check": cvcCheckValues.reverse[cvcCheck],
    "dynamic_last4": dynamicLast4,
    "exp_month": expMonth,
    "exp_year": expYear,
    "fingerprint": fingerprintValues.reverse[fingerprint],
    "funding": fundingValues.reverse[funding],
    "last4": last4,
    "name": name,
    "tokenization_method": tokenizationMethod,
    "wallet": wallet,
  };
}

enum SourceBrand {
  VISA
}

final sourceBrandValues = EnumValues({
  "Visa": SourceBrand.VISA
});

enum PaymentDataStatus {
  SUCCEEDED
}

final paymentDataStatusValues = EnumValues({
  "succeeded": PaymentDataStatus.SUCCEEDED
});

enum TransferGroup {
  ORDER10
}

final transferGroupValues = EnumValues({
  "ORDER10": TransferGroup.ORDER10
});

enum RentId {
  THE_653_CE3795_B460_F411_E9_E8_C39
}

final rentIdValues = EnumValues({
  "653ce3795b460f411e9e8c39": RentId.THE_653_CE3795_B460_F411_E9_E8_C39
});

enum UserId {
  THE_65155_DA81_AE339_B4_D66437_C1
}

final userIdValues = EnumValues({
  "65155da81ae339b4d66437c1": UserId.THE_65155_DA81_AE339_B4_D66437_C1
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
