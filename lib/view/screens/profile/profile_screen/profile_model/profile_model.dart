class ProfileModel {
  String? message;
  User? user;

  ProfileModel({this.message, this.user});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}

class User {
  String? sId;
  String? fullName;
  String? email;
  String? phoneNumber;
  String? gender;
  String? address;
  String? dateOfBirth;
  String? password;
  String? kYC;
  String? rFC;
  String? creaditCardNumber;
  String? ine;
  String? image;
  String? role;
  bool? emailVerified;
  bool? approved;
  String? isBanned;
  String? oneTimeCode;
  String? createdAt;
  String? updatedAt;
  int? iV;

  User(
      {this.sId,
      this.fullName,
      this.email,
      this.phoneNumber,
      this.gender,
      this.address,
      this.dateOfBirth,
      this.password,
      this.kYC,
      this.rFC,
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
      this.iV});

  User.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    fullName = json['fullName'];
    email = json['email'];
    phoneNumber = json['phoneNumber'];
    gender = json['gender'];
    address = json['address'];
    dateOfBirth = json['dateOfBirth'];
    password = json['password'];
    kYC = json['KYC'];
    rFC = json['RFC'];
    creaditCardNumber = json['creaditCardNumber'];
    ine = json['ine'];
    image = json['image'];
    role = json['role'];
    emailVerified = json['emailVerified'];
    approved = json['approved'];
    isBanned = json['isBanned'];
    oneTimeCode = json['oneTimeCode'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['fullName'] = fullName;
    data['email'] = email;
    data['phoneNumber'] = phoneNumber;
    data['gender'] = gender;
    data['address'] = address;
    data['dateOfBirth'] = dateOfBirth;
    data['password'] = password;
    data['KYC'] = kYC;
    data['RFC'] = rFC;
    data['creaditCardNumber'] = creaditCardNumber;
    data['ine'] = ine;
    data['image'] = image;
    data['role'] = role;
    data['emailVerified'] = emailVerified;
    data['approved'] = approved;
    data['isBanned'] = isBanned;
    data['oneTimeCode'] = oneTimeCode;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    return data;
  }
}
