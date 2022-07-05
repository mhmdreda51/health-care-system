class CreateRecordModel {
  CreateRecordModel({
    required this.status,
    required this.message,
    required this.data,
  });

  late final int status;
  late final String message;
  late final Data data;

  CreateRecordModel.fromJson(Map<String, dynamic> json) {
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
    required this.title,
    required this.cardDate,
    required this.typeId,
    required this.cardTime,
    required this.clientId,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  late final String title;
  late final String cardDate;
  late final String typeId;
  late final String cardTime;
  late final int clientId;
  late final String updatedAt;
  late final String createdAt;
  late final int id;

  Data.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    cardDate = json['card_date'];
    typeId = json['type_id'];
    cardTime = json['card_time'];
    clientId = json['client_id'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['title'] = title;
    _data['card_date'] = cardDate;
    _data['type_id'] = typeId;
    _data['card_time'] = cardTime;
    _data['client_id'] = clientId;
    _data['updated_at'] = updatedAt;
    _data['created_at'] = createdAt;
    _data['id'] = id;
    return _data;
  }
}
