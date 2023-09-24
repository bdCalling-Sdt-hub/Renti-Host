class CarListResponseModel {
  CarListResponseModel({
      String? message, 
      int? totalCar, 
      int? activeCar, 
      int? reservedCar, 
      List<Cars>? cars, 
      Pagination? pagination,}){
    _message = message;
    _totalCar = totalCar;
    _activeCar = activeCar;
    _reservedCar = reservedCar;
    _cars = cars;
    _pagination = pagination;
}

  CarListResponseModel.fromJson(dynamic json) {
    _message = json['message'];
    _totalCar = json['totalCar'];
    _activeCar = json['activeCar'];
    _reservedCar = json['reservedCar'];
    if (json['cars'] != null) {
      _cars = [];
      json['cars'].forEach((v) {
        _cars?.add(Cars.fromJson(v));
      });
    }
    _pagination = json['pagination'] != null ? Pagination.fromJson(json['pagination']) : null;
  }
  String? _message;
  int? _totalCar;
  int? _activeCar;
  int? _reservedCar;
  List<Cars>? _cars;
  Pagination? _pagination;

  String? get message => _message;
  int? get totalCar => _totalCar;
  int? get activeCar => _activeCar;
  int? get reservedCar => _reservedCar;
  List<Cars>? get cars => _cars;
  Pagination? get pagination => _pagination;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    map['totalCar'] = _totalCar;
    map['activeCar'] = _activeCar;
    map['reservedCar'] = _reservedCar;
    if (_cars != null) {
      map['cars'] = _cars?.map((v) => v.toJson()).toList();
    }
    if (_pagination != null) {
      map['pagination'] = _pagination?.toJson();
    }
    return map;
  }

}

class Pagination {
  Pagination({
      int? totalDocuments, 
      int? totalPage, 
      int? currentPage, 
      dynamic previousPage, 
      dynamic nextPage,}){
    _totalDocuments = totalDocuments;
    _totalPage = totalPage;
    _currentPage = currentPage;
    _previousPage = previousPage;
    _nextPage = nextPage;
}

  Pagination.fromJson(dynamic json) {
    _totalDocuments = json['totalDocuments'];
    _totalPage = json['totalPage'];
    _currentPage = json['currentPage'];
    _previousPage = json['previousPage'];
    _nextPage = json['nextPage'];
  }
  int? _totalDocuments;
  int? _totalPage;
  int? _currentPage;
  dynamic _previousPage;
  dynamic _nextPage;

  int? get totalDocuments => _totalDocuments;
  int? get totalPage => _totalPage;
  int? get currentPage => _currentPage;
  dynamic get previousPage => _previousPage;
  dynamic get nextPage => _nextPage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['totalDocuments'] = _totalDocuments;
    map['totalPage'] = _totalPage;
    map['currentPage'] = _currentPage;
    map['previousPage'] = _previousPage;
    map['nextPage'] = _nextPage;
    return map;
  }

}

class Cars {
  Cars({
      String? id, 
      String? carModelName, 
      List<String>? image, 
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
      int? v,}){
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
}

  Cars.fromJson(dynamic json) {
    _id = json['_id'];
    _carModelName = json['carModelName'];
    _image = json['image'] != null ? json['image'].cast<String>() : [];
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
  }
  String? _id;
  String? _carModelName;
  List<String>? _image;
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

  String? get id => _id;
  String? get carModelName => _carModelName;
  List<String>? get image => _image;
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
    return map;
  }

}