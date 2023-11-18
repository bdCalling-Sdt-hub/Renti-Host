import 'dart:convert';

class HomeCarListModel {
  String? message;
  int? totalCar;
  int? activeCar;
  int? reservedCar;
  List<Car>? cars;
  Pagination? pagination;

  HomeCarListModel({
    this.message,
    this.totalCar,
    this.activeCar,
    this.reservedCar,
    this.cars,
    this.pagination,
  });

  factory HomeCarListModel.fromRawJson(String str) => HomeCarListModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HomeCarListModel.fromJson(Map<String, dynamic> json) => HomeCarListModel(
    message: json["message"],
    totalCar: json["totalCar"],
    activeCar: json["activeCar"],
    reservedCar: json["reservedCar"],
    cars: json["cars"] == null ? [] : List<Car>.from(json["cars"]!.map((x) => Car.fromJson(x))),
    pagination: json["pagination"] == null ? null : Pagination.fromJson(json["pagination"]),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "totalCar": totalCar,
    "activeCar": activeCar,
    "reservedCar": reservedCar,
    "cars": cars == null ? [] : List<dynamic>.from(cars!.map((x) => x.toJson())),
    "pagination": pagination?.toJson(),
  };
}

class Car {
  String? id;
  String? carModelName;
  List<String>? image;
  int? year;
  String? carLicenseNumber;
  String? carDescription;
  String? insuranceStartDate;
  String? insuranceEndDate;
  List<String>? kyc;
  String? carColor;
  String? carDoors;
  String? carSeats;
  String? totalRun;
  String? hourlyRate;
  String? registrationDate;
  int? popularity;
  String? gearType;
  String? carType;
  String? specialCharacteristics;
  bool? activeReserve;
  String? tripStatus;
  String? carOwner;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  PaymentId? paymentId;
  List<String>? carImage;
  String? userId;

  Car({
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
    this.carImage,
    this.userId,
  });

  factory Car.fromRawJson(String str) => Car.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Car.fromJson(Map<String, dynamic> json) => Car(
    id: json["_id"],
    carModelName: json["carModelName"],
    image: json["image"] == null ? [] : List<String>.from(json["image"]!.map((x) => x)),
    year: json["year"],
    carLicenseNumber: json["carLicenseNumber"],
    carDescription: json["carDescription"],
    insuranceStartDate: json["insuranceStartDate"],
    insuranceEndDate: json["insuranceEndDate"],
    kyc: json["KYC"] == null ? [] : List<String>.from(json["KYC"]!.map((x) => x)),
    carColor: json["carColor"],
    carDoors: json["carDoors"],
    carSeats: json["carSeats"],
    totalRun: json["totalRun"],
    hourlyRate: json["hourlyRate"],
    registrationDate: json["registrationDate"],
    popularity: json["popularity"],
    gearType: json["gearType"],
    carType: json["carType"],
    specialCharacteristics: json["specialCharacteristics"],
    activeReserve: json["activeReserve"],
    tripStatus: json["tripStatus"],
    carOwner: json["carOwner"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    v: json["__v"],
    paymentId: json["paymentId"] == null ? null : PaymentId.fromJson(json["paymentId"]),
    carImage: json["carImage"] == null ? [] : List<String>.from(json["carImage"]!.map((x) => x)),
    userId: json["userId"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "carModelName": carModelName,
    "image": image == null ? [] : List<dynamic>.from(image!.map((x) => x)),
    "year": year,
    "carLicenseNumber": carLicenseNumber,
    "carDescription": carDescription,
    "insuranceStartDate": insuranceStartDate,
    "insuranceEndDate": insuranceEndDate,
    "KYC": kyc == null ? [] : List<dynamic>.from(kyc!.map((x) => x)),
    "carColor": carColor,
    "carDoors": carDoors,
    "carSeats": carSeats,
    "totalRun": totalRun,
    "hourlyRate": hourlyRate,
    "registrationDate": registrationDate,
    "popularity": popularity,
    "gearType": gearType,
    "carType": carType,
    "specialCharacteristics": specialCharacteristics,
    "activeReserve": activeReserve,
    "tripStatus": tripStatus,
    "carOwner": carOwner,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
    "paymentId": paymentId?.toJson(),
    "carImage": carImage == null ? [] : List<dynamic>.from(carImage!.map((x) => x)),
    "userId": userId,
  };
}

class PaymentId {
  String? id;
  PaymentData? paymentData;
  UserId? userId;
  String? hostId;
  String? carId;
  RentId? rentId;
  bool? payout;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  PaymentId({
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

  factory PaymentId.fromRawJson(String str) => PaymentId.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PaymentId.fromJson(Map<String, dynamic> json) => PaymentId(
    id: json["_id"],
    paymentData: json["paymentData"] == null ? null : PaymentData.fromJson(json["paymentData"]),
    userId: json["userId"] == null ? null : UserId.fromJson(json["userId"]),
    hostId: json["hostId"],
    carId: json["carId"],
    rentId: json["rentId"] == null ? null : RentId.fromJson(json["rentId"]),
    payout: json["payout"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "paymentData": paymentData?.toJson(),
    "userId": userId?.toJson(),
    "hostId": hostId,
    "carId": carId,
    "rentId": rentId?.toJson(),
    "payout": payout,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
  };
}

class PaymentData {
  String? id;
  String? object;
  int? amount;
  int? amountCaptured;
  int? amountRefunded;
  dynamic application;
  dynamic applicationFee;
  dynamic applicationFeeAmount;
  String? balanceTransaction;
  BillingDetails? billingDetails;
  String? calculatedStatementDescriptor;
  bool? captured;
  int? created;
  String? currency;
  String? customer;
  String? description;
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
  String? receiptEmail;
  dynamic receiptNumber;
  String? receiptUrl;
  bool? refunded;
  dynamic review;
  Shipping? shipping;
  Source? source;
  dynamic sourceTransfer;
  dynamic statementDescriptor;
  dynamic statementDescriptorSuffix;
  String? status;
  dynamic transferData;
  String? transferGroup;

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
    object: json["object"],
    amount: json["amount"],
    amountCaptured: json["amount_captured"],
    amountRefunded: json["amount_refunded"],
    application: json["application"],
    applicationFee: json["application_fee"],
    applicationFeeAmount: json["application_fee_amount"],
    balanceTransaction: json["balance_transaction"],
    billingDetails: json["billing_details"] == null ? null : BillingDetails.fromJson(json["billing_details"]),
    calculatedStatementDescriptor: json["calculated_statement_descriptor"],
    captured: json["captured"],
    created: json["created"],
    currency: json["currency"],
    customer: json["customer"],
    description: json["description"],
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
    receiptEmail: json["receipt_email"],
    receiptNumber: json["receipt_number"],
    receiptUrl: json["receipt_url"],
    refunded: json["refunded"],
    review: json["review"],
    shipping: json["shipping"] == null ? null : Shipping.fromJson(json["shipping"]),
    source: json["source"] == null ? null : Source.fromJson(json["source"]),
    sourceTransfer: json["source_transfer"],
    statementDescriptor: json["statement_descriptor"],
    statementDescriptorSuffix: json["statement_descriptor_suffix"],
    status: json["status"],
    transferData: json["transfer_data"],
    transferGroup: json["transfer_group"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "object": object,
    "amount": amount,
    "amount_captured": amountCaptured,
    "amount_refunded": amountRefunded,
    "application": application,
    "application_fee": applicationFee,
    "application_fee_amount": applicationFeeAmount,
    "balance_transaction": balanceTransaction,
    "billing_details": billingDetails?.toJson(),
    "calculated_statement_descriptor": calculatedStatementDescriptor,
    "captured": captured,
    "created": created,
    "currency": currency,
    "customer": customer,
    "description": description,
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
    "receipt_email": receiptEmail,
    "receipt_number": receiptNumber,
    "receipt_url": receiptUrl,
    "refunded": refunded,
    "review": review,
    "shipping": shipping?.toJson(),
    "source": source?.toJson(),
    "source_transfer": sourceTransfer,
    "statement_descriptor": statementDescriptor,
    "statement_descriptor_suffix": statementDescriptorSuffix,
    "status": status,
    "transfer_data": transferData,
    "transfer_group": transferGroup,
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
  String? country;
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
    country: json["country"],
    line1: json["line1"],
    line2: json["line2"],
    postalCode: json["postal_code"],
    state: json["state"],
  );

  Map<String, dynamic> toJson() => {
    "city": city,
    "country": country,
    "line1": line1,
    "line2": line2,
    "postal_code": postalCode,
    "state": state,
  };
}

class Outcome {
  String? networkStatus;
  dynamic reason;
  String? riskLevel;
  int? riskScore;
  String? sellerMessage;
  String? type;

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
    networkStatus: json["network_status"],
    reason: json["reason"],
    riskLevel: json["risk_level"],
    riskScore: json["risk_score"],
    sellerMessage: json["seller_message"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "network_status": networkStatus,
    "reason": reason,
    "risk_level": riskLevel,
    "risk_score": riskScore,
    "seller_message": sellerMessage,
    "type": type,
  };
}

class PaymentMethodDetails {
  Card? card;
  String? type;

  PaymentMethodDetails({
    this.card,
    this.type,
  });

  factory PaymentMethodDetails.fromRawJson(String str) => PaymentMethodDetails.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PaymentMethodDetails.fromJson(Map<String, dynamic> json) => PaymentMethodDetails(
    card: json["card"] == null ? null : Card.fromJson(json["card"]),
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "card": card?.toJson(),
    "type": type,
  };
}

class Card {
  int? amountAuthorized;
  String? brand;
  Checks? checks;
  String? country;
  int? expMonth;
  int? expYear;
  ExtendedAuthorization? extendedAuthorization;
  String? fingerprint;
  String? funding;
  ExtendedAuthorization? incrementalAuthorization;
  dynamic installments;
  String? last4;
  dynamic mandate;
  ExtendedAuthorization? multicapture;
  String? network;
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
    brand: json["brand"],
    checks: json["checks"] == null ? null : Checks.fromJson(json["checks"]),
    country: json["country"],
    expMonth: json["exp_month"],
    expYear: json["exp_year"],
    extendedAuthorization: json["extended_authorization"] == null ? null : ExtendedAuthorization.fromJson(json["extended_authorization"]),
    fingerprint: json["fingerprint"],
    funding: json["funding"],
    incrementalAuthorization: json["incremental_authorization"] == null ? null : ExtendedAuthorization.fromJson(json["incremental_authorization"]),
    installments: json["installments"],
    last4: json["last4"],
    mandate: json["mandate"],
    multicapture: json["multicapture"] == null ? null : ExtendedAuthorization.fromJson(json["multicapture"]),
    network: json["network"],
    networkToken: json["network_token"] == null ? null : NetworkToken.fromJson(json["network_token"]),
    overcapture: json["overcapture"] == null ? null : Overcapture.fromJson(json["overcapture"]),
    threeDSecure: json["three_d_secure"],
    wallet: json["wallet"],
  );

  Map<String, dynamic> toJson() => {
    "amount_authorized": amountAuthorized,
    "brand": brand,
    "checks": checks?.toJson(),
    "country": country,
    "exp_month": expMonth,
    "exp_year": expYear,
    "extended_authorization": extendedAuthorization?.toJson(),
    "fingerprint": fingerprint,
    "funding": funding,
    "incremental_authorization": incrementalAuthorization?.toJson(),
    "installments": installments,
    "last4": last4,
    "mandate": mandate,
    "multicapture": multicapture?.toJson(),
    "network": network,
    "network_token": networkToken?.toJson(),
    "overcapture": overcapture?.toJson(),
    "three_d_secure": threeDSecure,
    "wallet": wallet,
  };
}

class Checks {
  dynamic addressLine1Check;
  dynamic addressPostalCodeCheck;
  String? cvcCheck;

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
    cvcCheck: json["cvc_check"],
  );

  Map<String, dynamic> toJson() => {
    "address_line1_check": addressLine1Check,
    "address_postal_code_check": addressPostalCodeCheck,
    "cvc_check": cvcCheck,
  };
}

class ExtendedAuthorization {
  String? status;

  ExtendedAuthorization({
    this.status,
  });

  factory ExtendedAuthorization.fromRawJson(String str) => ExtendedAuthorization.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ExtendedAuthorization.fromJson(Map<String, dynamic> json) => ExtendedAuthorization(
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
  };
}

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
  String? status;

  Overcapture({
    this.maximumAmountCapturable,
    this.status,
  });

  factory Overcapture.fromRawJson(String str) => Overcapture.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Overcapture.fromJson(Map<String, dynamic> json) => Overcapture(
    maximumAmountCapturable: json["maximum_amount_capturable"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "maximum_amount_capturable": maximumAmountCapturable,
    "status": status,
  };
}

class Shipping {
  Address? address;
  dynamic carrier;
  String? name;
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
    name: json["name"],
    phone: json["phone"],
    trackingNumber: json["tracking_number"],
  );

  Map<String, dynamic> toJson() => {
    "address": address?.toJson(),
    "carrier": carrier,
    "name": name,
    "phone": phone,
    "tracking_number": trackingNumber,
  };
}

class Source {
  String? id;
  String? object;
  dynamic addressCity;
  dynamic addressCountry;
  dynamic addressLine1;
  dynamic addressLine1Check;
  dynamic addressLine2;
  dynamic addressState;
  dynamic addressZip;
  dynamic addressZipCheck;
  String? brand;
  String? country;
  String? customer;
  String? cvcCheck;
  dynamic dynamicLast4;
  int? expMonth;
  int? expYear;
  String? fingerprint;
  String? funding;
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
    object: json["object"],
    addressCity: json["address_city"],
    addressCountry: json["address_country"],
    addressLine1: json["address_line1"],
    addressLine1Check: json["address_line1_check"],
    addressLine2: json["address_line2"],
    addressState: json["address_state"],
    addressZip: json["address_zip"],
    addressZipCheck: json["address_zip_check"],
    brand: json["brand"],
    country: json["country"],
    customer: json["customer"],
    cvcCheck: json["cvc_check"],
    dynamicLast4: json["dynamic_last4"],
    expMonth: json["exp_month"],
    expYear: json["exp_year"],
    fingerprint: json["fingerprint"],
    funding: json["funding"],
    last4: json["last4"],
    name: json["name"],
    tokenizationMethod: json["tokenization_method"],
    wallet: json["wallet"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "object": object,
    "address_city": addressCity,
    "address_country": addressCountry,
    "address_line1": addressLine1,
    "address_line1_check": addressLine1Check,
    "address_line2": addressLine2,
    "address_state": addressState,
    "address_zip": addressZip,
    "address_zip_check": addressZipCheck,
    "brand": brand,
    "country": country,
    "customer": customer,
    "cvc_check": cvcCheck,
    "dynamic_last4": dynamicLast4,
    "exp_month": expMonth,
    "exp_year": expYear,
    "fingerprint": fingerprint,
    "funding": funding,
    "last4": last4,
    "name": name,
    "tokenization_method": tokenizationMethod,
    "wallet": wallet,
  };
}

class RentId {
  String? id;
  String? rentTripNumber;
  String? totalAmount;
  String? totalHours;
  String? requestStatus;
  DateTime? startDate;
  DateTime? endDate;
  String? payment;
  String? userId;
  String? carId;
  String? hostId;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  RentId({
    this.id,
    this.rentTripNumber,
    this.totalAmount,
    this.totalHours,
    this.requestStatus,
    this.startDate,
    this.endDate,
    this.payment,
    this.userId,
    this.carId,
    this.hostId,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory RentId.fromRawJson(String str) => RentId.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RentId.fromJson(Map<String, dynamic> json) => RentId(
    id: json["_id"],
    rentTripNumber: json["rentTripNumber"],
    totalAmount: json["totalAmount"],
    totalHours: json["totalHours"],
    requestStatus: json["requestStatus"],
    startDate: json["startDate"] == null ? null : DateTime.parse(json["startDate"]),
    endDate: json["endDate"] == null ? null : DateTime.parse(json["endDate"]),
    payment: json["payment"],
    userId: json["userId"],
    carId: json["carId"],
    hostId: json["hostId"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "rentTripNumber": rentTripNumber,
    "totalAmount": totalAmount,
    "totalHours": totalHours,
    "requestStatus": requestStatus,
    "startDate": startDate?.toIso8601String(),
    "endDate": endDate?.toIso8601String(),
    "payment": payment,
    "userId": userId,
    "carId": carId,
    "hostId": hostId,
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
  List<String>? kyc;
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
    kyc: json["KYC"] == null ? [] : List<String>.from(json["KYC"]!.map((x) => x)),
    ine: json["ine"],
    image: json["image"],
    role: json["role"],
    emailVerified: json["emailVerified"],
    approved: json["approved"],
    isBanned: json["isBanned"],
    oneTimeCode: json["oneTimeCode"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
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

class Pagination {
  int? totalDocuments;
  int? totalPage;
  int? currentPage;
  dynamic previousPage;
  dynamic nextPage;

  Pagination({
    this.totalDocuments,
    this.totalPage,
    this.currentPage,
    this.previousPage,
    this.nextPage,
  });

  factory Pagination.fromRawJson(String str) => Pagination.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
    totalDocuments: json["totalDocuments"],
    totalPage: json["totalPage"],
    currentPage: json["currentPage"],
    previousPage: json["previousPage"],
    nextPage: json["nextPage"],
  );

  Map<String, dynamic> toJson() => {
    "totalDocuments": totalDocuments,
    "totalPage": totalPage,
    "currentPage": currentPage,
    "previousPage": previousPage,
    "nextPage": nextPage,
  };
}
