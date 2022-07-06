class ChangePasswordModel {
  ChangePasswordModel({
    required this.status,
    required this.message,
    required this.data,
  });

  late final int status;
  late final String message;
  late final Data? data;

  ChangePasswordModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
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
    required this.id,
    required this.userName,
    required this.email,
    required this.long,
    required this.lat,
    required this.createdAt,
    required this.updatedAt,
    this.pinCode,
    required this.pinCodeDateExpired,
    required this.phone,
  });

  late final int id;
  late final String userName;
  late final String email;
  late final String long;
  late final String lat;
  late final String createdAt;
  late final String updatedAt;
  late final Null pinCode;
  late final String pinCodeDateExpired;
  late final String phone;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? 1;
    userName = json['user_name'] ?? "";
    email = json['email'] ?? "";
    long = json['long'] ?? "";
    lat = json['lat'] ?? "";
    createdAt = json['created_at'] ?? "";
    updatedAt = json['updated_at'] ?? "";
    pinCode = null;
    pinCodeDateExpired = json['pin_code_date_expired'] ?? "";
    phone = json['phone'] ?? "";
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
    _data['pin_code'] = pinCode;
    _data['pin_code_date_expired'] = pinCodeDateExpired;
    _data['phone'] = phone;
    return _data;
  }
}
