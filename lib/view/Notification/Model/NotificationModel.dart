class NotificationModel {
  NotificationModel({
    required this.data,
    required this.links,
    required this.meta,
    required this.status,
    required this.massage,
  });
  late final List<dynamic> data;
  late final Links links;
  late final Meta meta;
  late final int status;
  late final String massage;

  NotificationModel.fromJson(Map<String, dynamic> json) {
    data = List.castFrom<dynamic, dynamic>(json['data']);
    links = Links.fromJson(json['links']);
    meta = Meta.fromJson(json['meta']);
    status = json['status'];
    massage = json['massage'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data;
    _data['links'] = links.toJson();
    _data['meta'] = meta.toJson();
    _data['status'] = status;
    _data['massage'] = massage;
    return _data;
  }
}

class Links {
  Links({
    required this.first,
    required this.last,
    this.prev,
    this.next,
  });
  late final String first;
  late final String last;
  late final Null prev;
  late final Null next;

  Links.fromJson(Map<String, dynamic> json) {
    first = json['first'];
    last = json['last'];
    prev = null;
    next = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['first'] = first;
    _data['last'] = last;
    _data['prev'] = prev;
    _data['next'] = next;
    return _data;
  }
}

class Meta {
  Meta({
    required this.currentPage,
    this.from,
    required this.lastPage,
    required this.links,
    required this.path,
    required this.perPage,
    this.to,
    required this.total,
  });
  late final int currentPage;
  late final Null from;
  late final int lastPage;
  late final List<Links> links;
  late final String path;
  late final int perPage;
  late final Null to;
  late final int total;

  Meta.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    from = null;
    lastPage = json['last_page'];
    links = List.from(json['links']).map((e) => Links.fromJson(e)).toList();
    path = json['path'];
    perPage = json['per_page'];
    to = null;
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['current_page'] = currentPage;
    _data['from'] = from;
    _data['last_page'] = lastPage;
    _data['links'] = links.map((e) => e.toJson()).toList();
    _data['path'] = path;
    _data['per_page'] = perPage;
    _data['to'] = to;
    _data['total'] = total;
    return _data;
  }
}
