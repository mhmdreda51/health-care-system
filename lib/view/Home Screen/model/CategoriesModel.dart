class CategoriesModel {
  CategoriesModel({
    required this.status,
    required this.message,
    required this.data,
  });
  late final int status;
  late final String message;
  late final Data data;

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['message'] = message;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.category,
    required this.doctor,
    required this.hospital,
  });
  late final List<Category> category;
  late final List<Doctor> doctor;
  late final List<dynamic> hospital;

  Data.fromJson(Map<String, dynamic> json) {
    category =
        List.from(json['category']).map((e) => Category.fromJson(e)).toList();
    doctor = List.from(json['doctor']).map((e) => Doctor.fromJson(e)).toList();
    hospital = List.castFrom<dynamic, dynamic>(json['hospital']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['category'] = category.map((e) => e.toJson()).toList();
    _data['doctor'] = doctor.map((e) => e.toJson()).toList();
    _data['hospital'] = hospital;
    return _data;
  }
}

class Category {
  Category({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });
  late final int id;
  late final String name;
  late final String createdAt;
  late final String updatedAt;

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}

class Doctor {
  Doctor({
    required this.id,
    required this.name,
    required this.longitude,
    required this.latitude,
    required this.lang,
    required this.education,
    required this.publications,
    required this.description,
    required this.categoryId,
    required this.createdAt,
    required this.updatedAt,
    required this.distance,
    required this.attachmentRelation,
  });
  late final int id;
  late final String name;
  late final String longitude;
  late final String latitude;
  late final String lang;
  late final String education;
  late final String publications;
  late final String description;
  late final int categoryId;
  late final String createdAt;
  late final String updatedAt;
  late final double distance;
  late final List<dynamic> attachmentRelation;

  Doctor.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    lang = json['lang'];
    education = json['education'];
    publications = json['publications'];
    description = json['description'];
    categoryId = json['category_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    distance = json['distance'];
    attachmentRelation =
        List.castFrom<dynamic, dynamic>(json['attachment_relation']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['longitude'] = longitude;
    _data['latitude'] = latitude;
    _data['lang'] = lang;
    _data['education'] = education;
    _data['publications'] = publications;
    _data['description'] = description;
    _data['category_id'] = categoryId;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['distance'] = distance;
    _data['attachment_relation'] = attachmentRelation;
    return _data;
  }
}
