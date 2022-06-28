class LocationModel {
  LocationModel({
    required this.status,
    required this.message,
    required this.data,
  });

  late final int? status;
  late final String message;
  late final Data data;

  LocationModel.fromJson(Map<String, dynamic> json) {
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
    required this.user,
    required this.token,
  });

  late final User user;
  late final String token;

  Data.fromJson(Map<String, dynamic> json) {
    user = User.fromJson(json['user']);
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['user'] = user.toJson();
    _data['token'] = token;
    return _data;
  }
}

class User {
  User({
    required this.id,
    required this.userName,
    required this.email,
    required this.long,
    required this.lat,
    required this.createdAt,
    required this.updatedAt,
  });

  late final int id;
  late final String userName;
  late final String email;
  late final String long;
  late final String lat;
  late final String createdAt;
  late final String updatedAt;

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['user_name'];
    email = json['email'];
    long = json['long'];
    lat = json['lat'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['user_name'] = userName;
    _data['email'] = email;
    _data['long'] = long;
    _data['lat'] = lat;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}
