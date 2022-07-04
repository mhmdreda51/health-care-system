class MedicalInfoModel {
  MedicalInfoModel({
    required this.status,
    required this.message,
    required this.data,
  });

  late final int status;
  late final String message;
  late final Data? data;

  MedicalInfoModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = Data.fromJson(json['data']);
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
    required this.name,
    required this.serialNumber,
    required this.dateFirst,
    required this.locationFirst,
    required this.dateSec,
    required this.locationSec,
    required this.clientId,
    required this.createdAt,
    required this.updatedAt,
  });

  late final int? id;
  late final String? name;
  late final String? serialNumber;
  late final String? dateFirst;
  late final String? locationFirst;
  late final String? dateSec;
  late final String? locationSec;
  late final int? clientId;
  late final String? createdAt;
  late final String? updatedAt;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? 1;
    name = json['name'] ?? "";
    serialNumber = json['serial_number'] ?? "";
    dateFirst = json['date_first'] ?? "";
    locationFirst = json['location_first'] ?? "";
    dateSec = json['date_sec'] ?? "";
    locationSec = json['location_sec'] ?? "";
    clientId = json['client_id'] ?? 1;
    createdAt = json['created_at'] ?? "";
    updatedAt = json['updated_at'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['serial_number'] = serialNumber;
    _data['date_first'] = dateFirst;
    _data['location_first'] = locationFirst;
    _data['date_sec'] = dateSec;
    _data['location_sec'] = locationSec;
    _data['client_id'] = clientId;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}
