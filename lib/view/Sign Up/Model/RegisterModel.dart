class RegisterModel {
  RegisterModel({
    required this.status,
    required this.message,
    required this.data,
  });

  late final int status;
  late final String message;
  late final Data? data;

  RegisterModel.fromJson(Map<String, dynamic> json) {
    status = json['status'] ?? "";
    message = json['message'] ?? "";
    data = Data.fromJson(json['data'] ?? "");
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['message'] = message;
    _data['data'] = data!.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.token,
    required this.user,
  });

  late final String token;
  late final User? user;

  Data.fromJson(Map<String, dynamic> json) {
    token = json['token'] ?? "";
    user = User.fromJson(json['user']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['token'] = token;
    _data['user'] = user!.toJson();
    return _data;
  }
}

class User {
  User({
    required this.userName,
    required this.email,
    required this.phone,
    required this.bloodTypeId,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  late final String userName;
  late final String email;
  late final String phone;
  late final String bloodTypeId;
  late final String updatedAt;
  late final String createdAt;
  late final int id;

  User.fromJson(Map<String, dynamic> json) {
    userName = json['user_name'] ?? "";
    email = json['email'] ?? "";
    phone = json['phone'] ?? "";
    bloodTypeId = json['blood_type_id'] ?? "";
    updatedAt = json['updated_at'] ?? "";
    createdAt = json['created_at'] ?? "";
    id = json['id'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['user_name'] = userName;
    _data['email'] = email;
    _data['phone'] = phone;
    _data['blood_type_id'] = bloodTypeId;
    _data['updated_at'] = updatedAt;
    _data['created_at'] = createdAt;
    _data['id'] = id;
    return _data;
  }
}
