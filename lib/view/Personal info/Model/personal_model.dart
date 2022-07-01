class PersonalModel {
  PersonalModel({
    required this.status,
    required this.message,
    required this.data,
  });

  late final int? status;
  late final String message;
  late final Data data;

  PersonalModel.fromJson(Map<String, dynamic> json) {
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
    required this.id,
    required this.userName,
    required this.email,
    required this.phone,
  });

  late final int id;
  late final String userName;
  late final String email;
  late final String phone;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['user_name'];
    email = json['email'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['user_name'] = userName;
    _data['email'] = email;
    _data['phone'] = phone;
    return _data;
  }
}
