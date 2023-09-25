class AboutUsModel {
  String? message;
  About? about;

  AboutUsModel({this.message, this.about});

  AboutUsModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    about = json['about'] != null ? new About.fromJson(json['about']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.about != null) {
      data['about'] = this.about!.toJson();
    }
    return data;
  }
}

class About {
  String? sId;
  String? content;
  String? createdAt;
  String? updatedAt;
  int? iV;

  About({this.sId, this.content, this.createdAt, this.updatedAt, this.iV});

  About.fromJson(Map<String, dynamic> json) {
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
