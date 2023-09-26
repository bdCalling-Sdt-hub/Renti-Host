class RentRequestResponseModel {
  RentRequestResponseModel({
      String? message, 
      List<RentRequest>? rentRequest,}){
    _message = message;
    _rentRequest = rentRequest;
}

  RentRequestResponseModel.fromJson(dynamic json) {
    _message = json['message'];
    if (json['rentRequest'] != null) {
      _rentRequest = [];
      json['rentRequest'].forEach((v) {
        _rentRequest?.add(RentRequest.fromJson(v));
      });
    }
  }
  String? _message;
  List<RentRequest>? _rentRequest;

  String? get message => _message;
  List<RentRequest>? get rentRequest => _rentRequest;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    if (_rentRequest != null) {
      map['rentRequest'] = _rentRequest?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class RentRequest {
  RentRequest({
      String? id, 
      String? rentTripNumber, 
      String? totalAmount, 
      String? totalHours, 
      String? requestStatus, 
      String? startDate, 
      String? endDate, 
      String? payment, 
      String? userId, 
      String? carId, 
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

  RentRequest.fromJson(dynamic json) {
    _id = json['_id'];
    _rentTripNumber = json['rentTripNumber'];
    _totalAmount = json['totalAmount'];
    _totalHours = json['totalHours'];
    _requestStatus = json['requestStatus'];
    _startDate = json['startDate'];
    _endDate = json['endDate'];
    _payment = json['payment'];
    _userId = json['userId'];
    _carId = json['carId'];
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
  String? _userId;
  String? _carId;
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
  String? get userId => _userId;
  String? get carId => _carId;
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
    map['userId'] = _userId;
    map['carId'] = _carId;
    map['hostId'] = _hostId;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['__v'] = _v;
    return map;
  }

}