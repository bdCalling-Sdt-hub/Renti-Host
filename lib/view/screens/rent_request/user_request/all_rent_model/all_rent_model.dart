import 'dart:convert';

class AllRentRequestModel {
  String? message;
  List<RentRequest>? rentRequest;

  AllRentRequestModel({
    this.message,
    this.rentRequest,
  });

  factory AllRentRequestModel.fromRawJson(String str) =>
      AllRentRequestModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AllRentRequestModel.fromJson(Map<String, dynamic> json) =>
      AllRentRequestModel(
        message: json["message"],
        rentRequest: json["rentRequest"] == null
            ? []
            : List<RentRequest>.from(
                json["rentRequest"]!.map((x) => RentRequest.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "rentRequest": rentRequest == null
            ? []
            : List<dynamic>.from(rentRequest!.map((x) => x.toJson())),
      };
}

class RentRequest {
  String? id;
  String? rentTripNumber;
  String? totalAmount;
  String? totalHours;
  Payment? requestStatus;
  DateTime? startDate;
  DateTime? endDate;
  Payment? payment;
  UserId? userId;
  CarId? carId;
  HostId? hostId;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  RentRequest({
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

  factory RentRequest.fromRawJson(String str) =>
      RentRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RentRequest.fromJson(Map<String, dynamic> json) => RentRequest(
        id: json["_id"],
        rentTripNumber: json["rentTripNumber"],
        totalAmount: json["totalAmount"],
        totalHours: json["totalHours"],
        requestStatus: paymentValues.map[json["requestStatus"]]!,
        startDate: json["startDate"] == null
            ? null
            : DateTime.parse(json["startDate"]),
        endDate:
            json["endDate"] == null ? null : DateTime.parse(json["endDate"]),
        payment: paymentValues.map[json["payment"]]!,
        userId: json["userId"] == null ? null : UserId.fromJson(json["userId"]),
        carId: json["carId"] == null ? null : CarId.fromJson(json["carId"]),
        hostId: json["hostId"] == null ? null : HostId.fromJson(json["hostId"]),
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
        "rentTripNumber": rentTripNumber,
        "totalAmount": totalAmount,
        "totalHours": totalHours,
        "requestStatus": paymentValues.reverse[requestStatus],
        "startDate": startDate?.toIso8601String(),
        "endDate": endDate?.toIso8601String(),
        "payment": paymentValues.reverse[payment],
        "userId": userId?.toJson(),
        "carId": carId?.toJson(),
        "hostId": hostId?.toJson(),
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
  RegistrationDate? registrationDate;
  int? popularity;
  GearType? gearType;
  SpecialCharacteristics? specialCharacteristics;
  bool? activeReserve;
  TripStatus? tripStatus;
  CarOwner? carOwner;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  String? paymentId;
  List<String>? carImage;
  UserIdEnum? userId;

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
    this.registrationDate,
    this.popularity,
    this.gearType,
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

  factory CarId.fromRawJson(String str) => CarId.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CarId.fromJson(Map<String, dynamic> json) => CarId(
        id: idValues.map[json["_id"]]!,
        carModelName: carModelNameValues.map[json["carModelName"]]!,
        image: json["image"] == null
            ? []
            : List<String>.from(json["image"]!.map((x) => x)),
        year: json["year"],
        carLicenseNumber: carLicenseNumberValues.map[json["carLicenseNumber"]]!,
        carDescription: json["carDescription"],
        insuranceStartDate:
            insuranceStartDateValues.map[json["insuranceStartDate"]]!,
        insuranceEndDate: insuranceEndDateValues.map[json["insuranceEndDate"]]!,
        kyc: json["KYC"] == null
            ? []
            : List<String>.from(json["KYC"]!.map((x) => x)),
        carColor: carColorValues.map[json["carColor"]]!,
        carDoors: json["carDoors"],
        carSeats: json["carSeats"],
        totalRun: totalRunValues.map[json["totalRun"]]!,
        hourlyRate: json["hourlyRate"],
        registrationDate: registrationDateValues.map[json["registrationDate"]]!,
        popularity: json["popularity"],
        gearType: gearTypeValues.map[json["gearType"]]!,
        specialCharacteristics:
            specialCharacteristicsValues.map[json["specialCharacteristics"]]!,
        activeReserve: json["activeReserve"],
        tripStatus: tripStatusValues.map[json["tripStatus"]]!,
        carOwner: carOwnerValues.map[json["carOwner"]]!,
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        paymentId: json["paymentId"],
        carImage: json["carImage"] == null
            ? []
            : List<String>.from(json["carImage"]!.map((x) => x)),
        userId: userIdEnumValues.map[json["userId"]]!,
      );

  Map<String, dynamic> toJson() => {
        "_id": idValues.reverse[id],
        "carModelName": carModelNameValues.reverse[carModelName],
        "image": image == null ? [] : List<dynamic>.from(image!.map((x) => x)),
        "year": year,
        "carLicenseNumber": carLicenseNumberValues.reverse[carLicenseNumber],
        "carDescription": carDescription,
        "insuranceStartDate":
            insuranceStartDateValues.reverse[insuranceStartDate],
        "insuranceEndDate": insuranceEndDateValues.reverse[insuranceEndDate],
        "KYC": kyc == null ? [] : List<dynamic>.from(kyc!.map((x) => x)),
        "carColor": carColorValues.reverse[carColor],
        "carDoors": carDoors,
        "carSeats": carSeats,
        "totalRun": totalRunValues.reverse[totalRun],
        "hourlyRate": hourlyRate,
        "registrationDate": registrationDateValues.reverse[registrationDate],
        "popularity": popularity,
        "gearType": gearTypeValues.reverse[gearType],
        "specialCharacteristics":
            specialCharacteristicsValues.reverse[specialCharacteristics],
        "activeReserve": activeReserve,
        "tripStatus": tripStatusValues.reverse[tripStatus],
        "carOwner": carOwnerValues.reverse[carOwner],
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
        "paymentId": paymentId,
        "carImage":
            carImage == null ? [] : List<dynamic>.from(carImage!.map((x) => x)),
        "userId": userIdEnumValues.reverse[userId],
      };
}

enum CarColor { BLACK }

final carColorValues = EnumValues({"Black": CarColor.BLACK});

enum CarLicenseNumber { AVC12345123, AVC1234567 }

final carLicenseNumberValues = EnumValues({
  "AVC12345123": CarLicenseNumber.AVC12345123,
  "AVC1234567": CarLicenseNumber.AVC1234567
});

enum CarModelName { ABUL_RENT_CAR, BMW_10, MARCITY }

final carModelNameValues = EnumValues({
  "Abul Rent Car": CarModelName.ABUL_RENT_CAR,
  "BMW 10": CarModelName.BMW_10,
  "Marcity": CarModelName.MARCITY
});

enum CarOwner { THE_6512596795_D2_BB39898_B38_F1 }

final carOwnerValues = EnumValues(
    {"6512596795d2bb39898b38f1": CarOwner.THE_6512596795_D2_BB39898_B38_F1});

enum GearType { MANUAL }

final gearTypeValues = EnumValues({"Manual": GearType.MANUAL});

enum Id {
  THE_6512_CD3_E0_D62_EA37_F575_FDFD,
  THE_6513_A1410_D62_EA37_F575_FFBD,
  THE_6513_FDB0_C0_FBFDE118_A82549
}

final idValues = EnumValues({
  "6512cd3e0d62ea37f575fdfd": Id.THE_6512_CD3_E0_D62_EA37_F575_FDFD,
  "6513a1410d62ea37f575ffbd": Id.THE_6513_A1410_D62_EA37_F575_FFBD,
  "6513fdb0c0fbfde118a82549": Id.THE_6513_FDB0_C0_FBFDE118_A82549
});

enum InsuranceEndDate { THE_22082023, THE_22082024 }

final insuranceEndDateValues = EnumValues({
  "22-08-2023": InsuranceEndDate.THE_22082023,
  "22-08-2024": InsuranceEndDate.THE_22082024
});

enum InsuranceStartDate { THE_22012023, THE_22082022 }

final insuranceStartDateValues = EnumValues({
  "22-01-2023": InsuranceStartDate.THE_22012023,
  "22-08-2022": InsuranceStartDate.THE_22082022
});

enum RegistrationDate { THE_22082023, THE_22082025 }

final registrationDateValues = EnumValues({
  "22-08-2023 ": RegistrationDate.THE_22082023,
  "22-08-2025": RegistrationDate.THE_22082025
});

enum SpecialCharacteristics { GPS }

final specialCharacteristicsValues =
    EnumValues({"GPS": SpecialCharacteristics.GPS});

enum TotalRun { THE_50_KM }

final totalRunValues = EnumValues({"50 km": TotalRun.THE_50_KM});

enum TripStatus { PENDING, START }

final tripStatusValues =
    EnumValues({"Pending": TripStatus.PENDING, "Start": TripStatus.START});

enum UserIdEnum {
  THE_651109_DFC5_FA247293_D03_FC9,
  THE_65111_F98_D249_C7747_F0_C442_E,
  THE_65114_E7_C1517_F5592_CDCC32_C
}

final userIdEnumValues = EnumValues({
  "651109dfc5fa247293d03fc9": UserIdEnum.THE_651109_DFC5_FA247293_D03_FC9,
  "65111f98d249c7747f0c442e": UserIdEnum.THE_65111_F98_D249_C7747_F0_C442_E,
  "65114e7c1517f5592cdcc32c": UserIdEnum.THE_65114_E7_C1517_F5592_CDCC32_C
});

class HostId {
  CarOwner? id;
  HostIdFullName? fullName;
  HostIdEmail? email;
  String? phoneNumber;
  Gender? gender;
  Address? address;
  HostIdDateOfBirth? dateOfBirth;
  HostIdPassword? password;
  KycEnum? kyc;
  Rfc? rfc;
  String? creaditCardNumber;
  String? ine;
  String? image;
  HostIdRole? role;
  bool? emailVerified;
  bool? approved;
  String? isBanned;
  String? oneTimeCode;
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
    this.creaditCardNumber,
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
        id: carOwnerValues.map[json["_id"]]!,
        fullName: hostIdFullNameValues.map[json["fullName"]]!,
        email: hostIdEmailValues.map[json["email"]]!,
        phoneNumber: json["phoneNumber"],
        gender: genderValues.map[json["gender"]]!,
        address: addressValues.map[json["address"]]!,
        dateOfBirth: hostIdDateOfBirthValues.map[json["dateOfBirth"]]!,
        password: hostIdPasswordValues.map[json["password"]]!,
        kyc: kycEnumValues.map[json["KYC"]]!,
        rfc: rfcValues.map[json["RFC"]]!,
        creaditCardNumber: json["creaditCardNumber"],
        ine: json["ine"],
        image: json["image"],
        role: hostIdRoleValues.map[json["role"]]!,
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
        "_id": carOwnerValues.reverse[id],
        "fullName": hostIdFullNameValues.reverse[fullName],
        "email": hostIdEmailValues.reverse[email],
        "phoneNumber": phoneNumber,
        "gender": genderValues.reverse[gender],
        "address": addressValues.reverse[address],
        "dateOfBirth": hostIdDateOfBirthValues.reverse[dateOfBirth],
        "password": hostIdPasswordValues.reverse[password],
        "KYC": kycEnumValues.reverse[kyc],
        "RFC": rfcValues.reverse[rfc],
        "creaditCardNumber": creaditCardNumber,
        "ine": ine,
        "image": image,
        "role": hostIdRoleValues.reverse[role],
        "emailVerified": emailVerified,
        "approved": approved,
        "isBanned": isBanned,
        "oneTimeCode": oneTimeCode,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
      };
}

enum Address { DHAKA, MIRPUR_14_DHAKA }

final addressValues = EnumValues(
    {"Dhaka": Address.DHAKA, "Mirpur-14, Dhaka": Address.MIRPUR_14_DHAKA});

enum HostIdDateOfBirth { THE_11061998 }

final hostIdDateOfBirthValues =
    EnumValues({"11/06/1998": HostIdDateOfBirth.THE_11061998});

enum HostIdEmail { NAHIDUZZAMAN15_12736_DIU_EDU_BD }

final hostIdEmailValues = EnumValues({
  "nahiduzzaman15-12736@diu.edu.bd": HostIdEmail.NAHIDUZZAMAN15_12736_DIU_EDU_BD
});

enum HostIdFullName { NAHIDUZZAMAN }

final hostIdFullNameValues =
    EnumValues({"Nahiduzzaman": HostIdFullName.NAHIDUZZAMAN});

enum Gender { MALE }

final genderValues = EnumValues({"Male": Gender.MALE});

enum KycEnum { KYC }

final kycEnumValues = EnumValues({"kyc": KycEnum.KYC});

enum HostIdPassword {
  THE_2_A_10_OL_JZ_U_T_TH_RY29_D_K_UX_JBI_NO6_DA9_DE_Z0_A_IMM_DF44_LQY_KH87_A_YV_TIQ_LM
}

final hostIdPasswordValues = EnumValues({
  "\u00242a\u002410\u0024OlJz/uTThRy29dKUxJbiNO6Da9deZ0AImmDf44lqyKh87aYvTiqLm":
      HostIdPassword
          .THE_2_A_10_OL_JZ_U_T_TH_RY29_D_K_UX_JBI_NO6_DA9_DE_Z0_A_IMM_DF44_LQY_KH87_A_YV_TIQ_LM
});

enum Rfc { RFC }

final rfcValues = EnumValues({"rfc": Rfc.RFC});

enum HostIdRole { HOST }

final hostIdRoleValues = EnumValues({"host": HostIdRole.HOST});

enum Payment { ACCEPTED, COMPLETED, PENDING }

final paymentValues = EnumValues({
  "Accepted": Payment.ACCEPTED,
  "Completed": Payment.COMPLETED,
  "Pending": Payment.PENDING
});

class UserId {
  UserIdEnum? id;
  UserIdFullName? fullName;
  UserIdEmail? email;
  String? phoneNumber;
  Gender? gender;
  Address? address;
  UserIdDateOfBirth? dateOfBirth;
  UserIdPassword? password;
  dynamic kyc;
  Ine? ine;
  Image? image;
  UserIdRole? role;
  bool? emailVerified;
  bool? approved;
  String? isBanned;
  dynamic oneTimeCode;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  Rfc? rfc;
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
        id: userIdEnumValues.map[json["_id"]]!,
        fullName: userIdFullNameValues.map[json["fullName"]]!,
        email: userIdEmailValues.map[json["email"]]!,
        phoneNumber: json["phoneNumber"],
        gender: genderValues.map[json["gender"]]!,
        address: addressValues.map[json["address"]]!,
        dateOfBirth: userIdDateOfBirthValues.map[json["dateOfBirth"]]!,
        password: userIdPasswordValues.map[json["password"]]!,
        kyc: json["KYC"],
        ine: ineValues.map[json["ine"]]!,
        image: imageValues.map[json["image"]]!,
        role: userIdRoleValues.map[json["role"]]!,
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
        rfc: rfcValues.map[json["RFC"]]!,
        creaditCardNumber: json["creaditCardNumber"],
      );

  Map<String, dynamic> toJson() => {
        "_id": userIdEnumValues.reverse[id],
        "fullName": userIdFullNameValues.reverse[fullName],
        "email": userIdEmailValues.reverse[email],
        "phoneNumber": phoneNumber,
        "gender": genderValues.reverse[gender],
        "address": addressValues.reverse[address],
        "dateOfBirth": userIdDateOfBirthValues.reverse[dateOfBirth],
        "password": userIdPasswordValues.reverse[password],
        "KYC": kyc,
        "ine": ineValues.reverse[ine],
        "image": imageValues.reverse[image],
        "role": userIdRoleValues.reverse[role],
        "emailVerified": emailVerified,
        "approved": approved,
        "isBanned": isBanned,
        "oneTimeCode": oneTimeCode,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
        "RFC": rfcValues.reverse[rfc],
        "creaditCardNumber": creaditCardNumber,
      };
}

enum UserIdDateOfBirth { THE_17051999, THE_310945 }

final userIdDateOfBirthValues = EnumValues({
  "17/05/1999": UserIdDateOfBirth.THE_17051999,
  "31/09/45": UserIdDateOfBirth.THE_310945
});

enum UserIdEmail {
  HUMAYUN_GMAIL_COM,
  MOHAMMADJUBAYED_ISLAM97_GMAIL_COM,
  NADIMHASANNH48_GMAIL_COM
}

final userIdEmailValues = EnumValues({
  "humayun@gmail.com": UserIdEmail.HUMAYUN_GMAIL_COM,
  "mohammadjubayed.islam97@gmail.com":
      UserIdEmail.MOHAMMADJUBAYED_ISLAM97_GMAIL_COM,
  "nadimhasannh48@gmail.com": UserIdEmail.NADIMHASANNH48_GMAIL_COM
});

enum UserIdFullName { HUMAYUN, MOHAMAD_JUBAYED, NADIM_HASAN }

final userIdFullNameValues = EnumValues({
  "Humayun": UserIdFullName.HUMAYUN,
  "Mohamad Jubayed": UserIdFullName.MOHAMAD_JUBAYED,
  "Nadim Hasan": UserIdFullName.NADIM_HASAN
});

enum Image { EMPTY, IMAGE }

final imageValues = EnumValues({"": Image.EMPTY, "image": Image.IMAGE});

enum Ine { RU122345667 }

final ineValues = EnumValues({"RU122345667": Ine.RU122345667});

enum UserIdPassword {
  THE_2_A_10_D_TU_CG1_HV_W_FQ6_P7_WKRO_HFVE_DL8_MW_P2_EJSLAX03_B_T8_C247_XVHP6_NR26,
  THE_2_A_10_QVU_A4_A_ZITKR_IS4_T_CVQY_MU_L9_ZX_BZ_FY2_P_XT_3_JJJ0_Y_JV_J_DQDL_QB_EP_G,
  THE_2_A_10_ZL_E_NT8_E_K_DZQZ_N9_TO_UE_TH_R_DOU_JHG_YLC_C_HLC_6_DY_NWCEH_WW6_AC
}

final userIdPasswordValues = EnumValues({
  "\u00242a\u002410\u0024dTUCg1HvWFq6p7WKROHfveDl8MwP2EJSLAX03bT8c247xvhp6Nr26":
      UserIdPassword
          .THE_2_A_10_D_TU_CG1_HV_W_FQ6_P7_WKRO_HFVE_DL8_MW_P2_EJSLAX03_B_T8_C247_XVHP6_NR26,
  "\u00242a\u002410\u0024QvuA4A/zitkrIs4tCVQYMuL9ZXBzFY2pXt.3jjj0yJvJDqdlQbEpG":
      UserIdPassword
          .THE_2_A_10_QVU_A4_A_ZITKR_IS4_T_CVQY_MU_L9_ZX_BZ_FY2_P_XT_3_JJJ0_Y_JV_J_DQDL_QB_EP_G,
  "\u00242a\u002410\u0024zlENt8eKDzqzN9toUeTh..rDOUJhgYlcC.Hlc/6DY.nwcehWw6AC.":
      UserIdPassword
          .THE_2_A_10_ZL_E_NT8_E_K_DZQZ_N9_TO_UE_TH_R_DOU_JHG_YLC_C_HLC_6_DY_NWCEH_WW6_AC
});

enum UserIdRole { USER }

final userIdRoleValues = EnumValues({"user": UserIdRole.USER});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
