class EditProfileModel {
  String? message;
  User? user;

  EditProfileModel({this.message, this.user});

  EditProfileModel.fromJson(Map<String, dynamic> json) {
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
  String? phoneNumber;
  String? gender;
  String? address;
  String? dateOfBirth;
  String? kYC;
  String? rFC;
  String? creaditCardNumber;
  String? image;

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
      this.phoneNumber,
      this.gender,
      this.address,
      this.dateOfBirth,
      this.kYC,
      this.rFC,
      this.creaditCardNumber,
      this.image});

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
    phoneNumber = json['phoneNumber'];
    gender = json['gender'];
    address = json['address'];
    dateOfBirth = json['dateOfBirth'];
    kYC = json['KYC'];
    rFC = json['RFC'];
    creaditCardNumber = json['creaditCardNumber'];
    image = json['image'];
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
    data['phoneNumber'] = this.phoneNumber;
    data['gender'] = this.gender;
    data['address'] = this.address;
    data['dateOfBirth'] = this.dateOfBirth;
    data['KYC'] = this.kYC;
    data['RFC'] = this.rFC;
    data['creaditCardNumber'] = this.creaditCardNumber;
    data['image'] = this.image;
    return data;
  }
}
