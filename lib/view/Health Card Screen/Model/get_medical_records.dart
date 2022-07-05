class GetMedicalRecModel {
  GetMedicalRecModel({
    required this.status,
    required this.message,
    required this.data,
  });

  late final int status;
  late final String message;
  late final List<Data> data;

  GetMedicalRecModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = List.from(json['data']).map((e) => Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['message'] = message;
    _data['data'] = data.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.title,
    required this.cardDate,
    required this.cardTime,
    required this.clientId,
    required this.createdAt,
    required this.updatedAt,
    required this.typeId,
    required this.attachmentRelation,
    this.type,
  });

  late final int id;
  late final String title;
  late final String cardDate;
  late final String cardTime;
  late final int clientId;
  late final String createdAt;
  late final String updatedAt;
  late final int typeId;
  late final List<AttachmentRelation> attachmentRelation;
  late final Type? type;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    cardDate = json['card_date'];
    cardTime = json['card_time'];
    clientId = json['client_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    typeId = json['type_id'];
    attachmentRelation = List.from(json['attachment_relation'])
        .map((e) => AttachmentRelation.fromJson(e))
        .toList();
    type = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['title'] = title;
    _data['card_date'] = cardDate;
    _data['card_time'] = cardTime;
    _data['client_id'] = clientId;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['type_id'] = typeId;
    _data['attachment_relation'] =
        attachmentRelation.map((e) => e.toJson()).toList();
    _data['type'] = type;
    return _data;
  }
}

class AttachmentRelation {
  AttachmentRelation({
    required this.id,
    required this.path,
    required this.type,
    this.usage,
    required this.attachmentableType,
    required this.attachmentableId,
    required this.createdAt,
    required this.updatedAt,
  });

  late final int id;
  late final String path;
  late final String type;
  late final Null usage;
  late final String attachmentableType;
  late final int attachmentableId;
  late final String createdAt;
  late final String updatedAt;

  AttachmentRelation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    path = json['path'];
    type = json['type'];
    usage = null;
    attachmentableType = json['attachmentable_type'];
    attachmentableId = json['attachmentable_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['path'] = path;
    _data['type'] = type;
    _data['usage'] = usage;
    _data['attachmentable_type'] = attachmentableType;
    _data['attachmentable_id'] = attachmentableId;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}

class Type {
  Type({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  late final int id;
  late final String name;
  late final String createdAt;
  late final String updatedAt;

  Type.fromJson(Map<String, dynamic> json) {
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
