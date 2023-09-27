class RentListByIdModel {
  RentListByIdModel({
      String? message, 
      UserDetails? userDetails,}){
    _message = message;
    _userDetails = userDetails;
}

  RentListByIdModel.fromJson(dynamic json) {
    _message = json['message'];
    _userDetails = json['userDetails'] != null ? UserDetails.fromJson(json['userDetails']) : null;
  }
  String? _message;
  UserDetails? _userDetails;

  String? get message => _message;
  UserDetails? get userDetails => _userDetails;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    if (_userDetails != null) {
      map['userDetails'] = _userDetails?.toJson();
    }
    return map;
  }

}

class UserDetails {
  UserDetails({
      String? id, 
      String? rentTripNumber, 
      String? totalAmount, 
      String? totalHours, 
      String? requestStatus, 
      String? startDate, 
      String? endDate, 
      String? payment, 
      UserId? userId, 
      CarId? carId, 
      String? hostId, 
      String? createdAt, 
      String? updatedAt, 
      int? v,}){
    _id = id;
    _rentTripNumber = rentTripNumber;
    _totalAmount = totalAmount;
    _totalHours = totalHours;
    _requestStatus = requestStatus;
    _startDate = startDate;
    _endDate = endDate;
    _payment = payment;
    _userId = userId;
    _carId = carId;
    _hostId = hostId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _v = v;
}

  UserDetails.fromJson(dynamic json) {
    _id = json['_id'];
    _rentTripNumber = json['rentTripNumber'];
    _totalAmount = json['totalAmount'];
    _totalHours = json['totalHours'];
    _requestStatus = json['requestStatus'];
    _startDate = json['startDate'];
    _endDate = json['endDate'];
    _payment = json['payment'];
    _userId = json['userId'] != null ? UserId.fromJson(json['userId']) : null;
    _carId = json['carId'] != null ? CarId.fromJson(json['carId']) : null;
    _hostId = json['hostId'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _v = json['__v'];
  }
  String? _id;
  String? _rentTripNumber;
  String? _totalAmount;
  String? _totalHours;
  String? _requestStatus;
  String? _startDate;
  String? _endDate;
  String? _payment;
  UserId? _userId;
  CarId? _carId;
  String? _hostId;
  String? _createdAt;
  String? _updatedAt;
  int? _v;

  String? get id => _id;
  String? get rentTripNumber => _rentTripNumber;
  String? get totalAmount => _totalAmount;
  String? get totalHours => _totalHours;
  String? get requestStatus => _requestStatus;
  String? get startDate => _startDate;
  String? get endDate => _endDate;
  String? get payment => _payment;
  UserId? get userId => _userId;
  CarId? get carId => _carId;
  String? get hostId => _hostId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  int? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['rentTripNumber'] = _rentTripNumber;
    map['totalAmount'] = _totalAmount;
    map['totalHours'] = _totalHours;
    map['requestStatus'] = _requestStatus;
    map['startDate'] = _startDate;
    map['endDate'] = _endDate;
    map['payment'] = _payment;
    if (_userId != null) {
      map['userId'] = _userId?.toJson();
    }
    if (_carId != null) {
      map['carId'] = _carId?.toJson();
    }
    map['hostId'] = _hostId;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['__v'] = _v;
    return map;
  }

}

class CarId {
  CarId({
      String? id, 
      String? carModelName, 
      String? image, 
      int? year, 
      String? carLicenseNumber, 
      String? carDescription, 
      String? insuranceStartDate, 
      String? insuranceEndDate, 
      List<String>? kyc, 
      String? carColor, 
      String? carDoors, 
      String? carSeats, 
      String? totalRun, 
      String? hourlyRate, 
      String? registrationDate, 
      String? gearType, 
      String? specialCharacteristics, 
      bool? activeReserve, 
      String? tripStatus, 
      String? carOwner, 
      String? createdAt, 
      String? updatedAt, 
      int? v, 
      String? paymentId, 
      int? popularity,}){
    _id = id;
    _carModelName = carModelName;
    _image = image;
    _year = year;
    _carLicenseNumber = carLicenseNumber;
    _carDescription = carDescription;
    _insuranceStartDate = insuranceStartDate;
    _insuranceEndDate = insuranceEndDate;
    _kyc = kyc;
    _carColor = carColor;
    _carDoors = carDoors;
    _carSeats = carSeats;
    _totalRun = totalRun;
    _hourlyRate = hourlyRate;
    _registrationDate = registrationDate;
    _gearType = gearType;
    _specialCharacteristics = specialCharacteristics;
    _activeReserve = activeReserve;
    _tripStatus = tripStatus;
    _carOwner = carOwner;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _v = v;
    _paymentId = paymentId;
    _popularity = popularity;
}

  CarId.fromJson(dynamic json) {
    _id = json['_id'];
    _carModelName = json['carModelName'];
    _image = json['image'];
    _year = json['year'];
    _carLicenseNumber = json['carLicenseNumber'];
    _carDescription = json['carDescription'];
    _insuranceStartDate = json['insuranceStartDate'];
    _insuranceEndDate = json['insuranceEndDate'];
    _kyc = json['KYC'] != null ? json['KYC'].cast<String>() : [];
    _carColor = json['carColor'];
    _carDoors = json['carDoors'];
    _carSeats = json['carSeats'];
    _totalRun = json['totalRun'];
    _hourlyRate = json['hourlyRate'];
    _registrationDate = json['registrationDate'];
    _gearType = json['gearType'];
    _specialCharacteristics = json['specialCharacteristics'];
    _activeReserve = json['activeReserve'];
    _tripStatus = json['tripStatus'];
    _carOwner = json['carOwner'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _v = json['__v'];
    _paymentId = json['paymentId'];
    _popularity = json['popularity'];
  }
  String? _id;
  String? _carModelName;
  String? _image;
  int? _year;
  String? _carLicenseNumber;
  String? _carDescription;
  String? _insuranceStartDate;
  String? _insuranceEndDate;
  List<String>? _kyc;
  String? _carColor;
  String? _carDoors;
  String? _carSeats;
  String? _totalRun;
  String? _hourlyRate;
  String? _registrationDate;
  String? _gearType;
  String? _specialCharacteristics;
  bool? _activeReserve;
  String? _tripStatus;
  String? _carOwner;
  String? _createdAt;
  String? _updatedAt;
  int? _v;
  String? _paymentId;
  int? _popularity;

  String? get id => _id;
  String? get carModelName => _carModelName;
  String? get image => _image;
  int? get year => _year;
  String? get carLicenseNumber => _carLicenseNumber;
  String? get carDescription => _carDescription;
  String? get insuranceStartDate => _insuranceStartDate;
  String? get insuranceEndDate => _insuranceEndDate;
  List<String>? get kyc => _kyc;
  String? get carColor => _carColor;
  String? get carDoors => _carDoors;
  String? get carSeats => _carSeats;
  String? get totalRun => _totalRun;
  String? get hourlyRate => _hourlyRate;
  String? get registrationDate => _registrationDate;
  String? get gearType => _gearType;
  String? get specialCharacteristics => _specialCharacteristics;
  bool? get activeReserve => _activeReserve;
  String? get tripStatus => _tripStatus;
  String? get carOwner => _carOwner;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  int? get v => _v;
  String? get paymentId => _paymentId;
  int? get popularity => _popularity;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['carModelName'] = _carModelName;
    map['image'] = _image;
    map['year'] = _year;
    map['carLicenseNumber'] = _carLicenseNumber;
    map['carDescription'] = _carDescription;
    map['insuranceStartDate'] = _insuranceStartDate;
    map['insuranceEndDate'] = _insuranceEndDate;
    map['KYC'] = _kyc;
    map['carColor'] = _carColor;
    map['carDoors'] = _carDoors;
    map['carSeats'] = _carSeats;
    map['totalRun'] = _totalRun;
    map['hourlyRate'] = _hourlyRate;
    map['registrationDate'] = _registrationDate;
    map['gearType'] = _gearType;
    map['specialCharacteristics'] = _specialCharacteristics;
    map['activeReserve'] = _activeReserve;
    map['tripStatus'] = _tripStatus;
    map['carOwner'] = _carOwner;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['__v'] = _v;
    map['paymentId'] = _paymentId;
    map['popularity'] = _popularity;
    return map;
  }

}

class UserId {
  UserId({
      String? id, 
      String? fullName, 
      String? email, 
      String? phoneNumber, 
      String? gender, 
      String? address, 
      String? dateOfBirth, 
      String? password, 
      List<dynamic>? kyc, 
      String? ine, 
      String? image, 
      String? role, 
      bool? emailVerified, 
      bool? approved, 
      String? isBanned, 
      dynamic oneTimeCode, 
      String? createdAt, 
      String? updatedAt, 
      int? v,}){
    _id = id;
    _fullName = fullName;
    _email = email;
    _phoneNumber = phoneNumber;
    _gender = gender;
    _address = address;
    _dateOfBirth = dateOfBirth;
    _password = password;
    _kyc = kyc;
    _ine = ine;
    _image = image;
    _role = role;
    _emailVerified = emailVerified;
    _approved = approved;
    _isBanned = isBanned;
    _oneTimeCode = oneTimeCode;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _v = v;
}

  UserId.fromJson(dynamic json) {
    _id = json['_id'];
    _fullName = json['fullName'];
    _email = json['email'];
    _phoneNumber = json['phoneNumber'];
    _gender = json['gender'];
    _address = json['address'];
    _dateOfBirth = json['dateOfBirth'];
    _password = json['password'];
    _kyc = json['KYC'] != null ? json['KYC'].cast<String>() : [];
    _ine = json['ine'];
    _image = json['image'];
    _role = json['role'];
    _emailVerified = json['emailVerified'];
    _approved = json['approved'];
    _isBanned = json['isBanned'];
    _oneTimeCode = json['oneTimeCode'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _v = json['__v'];
  }
  String? _id;
  String? _fullName;
  String? _email;
  String? _phoneNumber;
  String? _gender;
  String? _address;
  String? _dateOfBirth;
  String? _password;
  List<dynamic>? _kyc;
  String? _ine;
  String? _image;
  String? _role;
  bool? _emailVerified;
  bool? _approved;
  String? _isBanned;
  dynamic _oneTimeCode;
  String? _createdAt;
  String? _updatedAt;
  int? _v;

  String? get id => _id;
  String? get fullName => _fullName;
  String? get email => _email;
  String? get phoneNumber => _phoneNumber;
  String? get gender => _gender;
  String? get address => _address;
  String? get dateOfBirth => _dateOfBirth;
  String? get password => _password;
  List<dynamic>? get kyc => _kyc;
  String? get ine => _ine;
  String? get image => _image;
  String? get role => _role;
  bool? get emailVerified => _emailVerified;
  bool? get approved => _approved;
  String? get isBanned => _isBanned;
  dynamic get oneTimeCode => _oneTimeCode;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  int? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['fullName'] = _fullName;
    map['email'] = _email;
    map['phoneNumber'] = _phoneNumber;
    map['gender'] = _gender;
    map['address'] = _address;
    map['dateOfBirth'] = _dateOfBirth;
    map['password'] = _password;
    if (_kyc != null) {
      map['KYC'] = _kyc?.map((v) => v.toJson()).toList();
    }
    map['ine'] = _ine;
    map['image'] = _image;
    map['role'] = _role;
    map['emailVerified'] = _emailVerified;
    map['approved'] = _approved;
    map['isBanned'] = _isBanned;
    map['oneTimeCode'] = _oneTimeCode;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['__v'] = _v;
    return map;
  }

}