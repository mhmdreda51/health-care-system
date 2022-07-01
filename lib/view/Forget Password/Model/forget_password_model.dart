class ForgetPasswordModel {
  ForgetPasswordModel({
    required this.status,
    required this.message,
    required this.data,
  });
  late final int status;
  late final String message;
  late final Data data;

  ForgetPasswordModel.fromJson(Map<String, dynamic> json) {
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
    required this.pinCode,
  });
  late final int pinCode;

  Data.fromJson(Map<String, dynamic> json) {
    pinCode = json['pin_code'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['pin_code'] = pinCode;
    return _data;
  }
}
