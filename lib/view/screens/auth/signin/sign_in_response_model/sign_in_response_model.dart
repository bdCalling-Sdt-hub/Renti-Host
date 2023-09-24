class SignInResponseModel {
  SignInResponseModel({
      String? message, 
      User? user, 
      String? accessToken,}){
    _message = message;
    _user = user;
    _accessToken = accessToken;
}

  SignInResponseModel.fromJson(dynamic json) {
    _message = json['message'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    _accessToken = json['accessToken'];
  }
  String? _message;
  User? _user;
  String? _accessToken;

  String? get message => _message;
  User? get user => _user;
  String? get accessToken => _accessToken;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    map['accessToken'] = _accessToken;
    return map;
  }

}

class User {
  User({
      String? id, 
      String? fullName, 
      String? email, 
      String? password, 
      String? ine, 
      String? role, 
      bool? emailVerified, 
      bool? approved, 
      String? isBanned, 
      String? oneTimeCode, 
      String? createdAt, 
      String? updatedAt, 
      int? v, 
      String? kyc, 
      String? rfc, 
      String? address, 
      String? creaditCardNumber, 
      String? dateOfBirth, 
      String? gender, 
      String? image, 
      String? phoneNumber,}){
    _id = id;
    _fullName = fullName;
    _email = email;
    _password = password;
    _ine = ine;
    _role = role;
    _emailVerified = emailVerified;
    _approved = approved;
    _isBanned = isBanned;
    _oneTimeCode = oneTimeCode;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _v = v;
    _kyc = kyc;
    _rfc = rfc;
    _address = address;
    _creaditCardNumber = creaditCardNumber;
    _dateOfBirth = dateOfBirth;
    _gender = gender;
    _image = image;
    _phoneNumber = phoneNumber;
}

  User.fromJson(dynamic json) {
    _id = json['_id'];
    _fullName = json['fullName'];
    _email = json['email'];
    _password = json['password'];
    _ine = json['ine'];
    _role = json['role'];
    _emailVerified = json['emailVerified'];
    _approved = json['approved'];
    _isBanned = json['isBanned'];
    _oneTimeCode = json['oneTimeCode'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _v = json['__v'];
    _kyc = json['KYC'];
    _rfc = json['RFC'];
    _address = json['address'];
    _creaditCardNumber = json['creaditCardNumber'];
    _dateOfBirth = json['dateOfBirth'];
    _gender = json['gender'];
    _image = json['image'];
    _phoneNumber = json['phoneNumber'];
  }
  String? _id;
  String? _fullName;
  String? _email;
  String? _password;
  String? _ine;
  String? _role;
  bool? _emailVerified;
  bool? _approved;
  String? _isBanned;
  String? _oneTimeCode;
  String? _createdAt;
  String? _updatedAt;
  int? _v;
  String? _kyc;
  String? _rfc;
  String? _address;
  String? _creaditCardNumber;
  String? _dateOfBirth;
  String? _gender;
  String? _image;
  String? _phoneNumber;

  String? get id => _id;
  String? get fullName => _fullName;
  String? get email => _email;
  String? get password => _password;
  String? get ine => _ine;
  String? get role => _role;
  bool? get emailVerified => _emailVerified;
  bool? get approved => _approved;
  String? get isBanned => _isBanned;
  String? get oneTimeCode => _oneTimeCode;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  int? get v => _v;
  String? get kyc => _kyc;
  String? get rfc => _rfc;
  String? get address => _address;
  String? get creaditCardNumber => _creaditCardNumber;
  String? get dateOfBirth => _dateOfBirth;
  String? get gender => _gender;
  String? get image => _image;
  String? get phoneNumber => _phoneNumber;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['fullName'] = _fullName;
    map['email'] = _email;
    map['password'] = _password;
    map['ine'] = _ine;
    map['role'] = _role;
    map['emailVerified'] = _emailVerified;
    map['approved'] = _approved;
    map['isBanned'] = _isBanned;
    map['oneTimeCode'] = _oneTimeCode;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['__v'] = _v;
    map['KYC'] = _kyc;
    map['RFC'] = _rfc;
    map['address'] = _address;
    map['creaditCardNumber'] = _creaditCardNumber;
    map['dateOfBirth'] = _dateOfBirth;
    map['gender'] = _gender;
    map['image'] = _image;
    map['phoneNumber'] = _phoneNumber;
    return map;
  }

}