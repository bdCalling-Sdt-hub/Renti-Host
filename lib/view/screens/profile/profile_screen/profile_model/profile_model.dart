class ProfileModel {
  String? message;
  User? user;

  ProfileModel({this.message, this.user});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  String? sId;
  String? fullName;
  String? email;
  String? password;
  String? ine;
  String? role;
  bool? emailVerified;
  bool? approved;
  String? isBanned;
  String? oneTimeCode;
  String? createdAt;
  String? updatedAt;
  int? iV;
  String? kYC;
  String? rFC;
  String? address;
  String? creaditCardNumber;
  String? dateOfBirth;
  String? gender;
  String? image;
  String? phoneNumber;

  User(
      {this.sId,
      this.fullName,
      this.email,
      this.password,
      this.ine,
      this.role,
      this.emailVerified,
      this.approved,
      this.isBanned,
      this.oneTimeCode,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.kYC,
      this.rFC,
      this.address,
      this.creaditCardNumber,
      this.dateOfBirth,
      this.gender,
      this.image,
      this.phoneNumber});

  User.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    fullName = json['fullName'];
    email = json['email'];
    password = json['password'];
    ine = json['ine'];
    role = json['role'];
    emailVerified = json['emailVerified'];
    approved = json['approved'];
    isBanned = json['isBanned'];
    oneTimeCode = json['oneTimeCode'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    kYC = json['KYC'];
    rFC = json['RFC'];
    address = json['address'];
    creaditCardNumber = json['creaditCardNumber'];
    dateOfBirth = json['dateOfBirth'];
    gender = json['gender'];
    image = json['image'];
    phoneNumber = json['phoneNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['fullName'] = this.fullName;
    data['email'] = this.email;
    data['password'] = this.password;
    data['ine'] = this.ine;
    data['role'] = this.role;
    data['emailVerified'] = this.emailVerified;
    data['approved'] = this.approved;
    data['isBanned'] = this.isBanned;
    data['oneTimeCode'] = this.oneTimeCode;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    data['KYC'] = this.kYC;
    data['RFC'] = this.rFC;
    data['address'] = this.address;
    data['creaditCardNumber'] = this.creaditCardNumber;
    data['dateOfBirth'] = this.dateOfBirth;
    data['gender'] = this.gender;
    data['image'] = this.image;
    data['phoneNumber'] = this.phoneNumber;
    return data;
  }
}
