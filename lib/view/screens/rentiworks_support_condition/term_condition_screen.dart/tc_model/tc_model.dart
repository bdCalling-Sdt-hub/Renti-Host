class TermConditionModel {
  String? message;
  TermsCondition? termsCondition;

  TermConditionModel({this.message, this.termsCondition});

  TermConditionModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    termsCondition = json['termsCondition'] != null
        ? new TermsCondition.fromJson(json['termsCondition'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.termsCondition != null) {
      data['termsCondition'] = this.termsCondition!.toJson();
    }
    return data;
  }
}

class TermsCondition {
  String? sId;
  String? content;
  String? createdAt;
  String? updatedAt;
  int? iV;

  TermsCondition(
      {this.sId, this.content, this.createdAt, this.updatedAt, this.iV});

  TermsCondition.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    content = json['content'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['content'] = this.content;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
