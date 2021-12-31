class Note {
  int? _id;
  String? _title;
  String? _desc;
  String? _date;
  int? _priority;

  Note.withId(this._id, this._title, this._date, this._priority, [this._desc]);

  Note(this._title, this._date, this._priority, [this._desc]);

  int get id => _id!;

  set id(int value) {
    _id = value;
  }

  String get title => _title!;

  set title(String value) {
    _title = value;
  }

  String get des => _desc!;

  set des(String value) {
    _desc = value;
  }

  String get date => _date!;

  set date(String value) {
    _date = value;
  }

  int get priority => _priority!;

  set priority(int value) {
    _priority = value;
  }

  // Map
  Map<String, dynamic> tomap() {
    var map = Map<String, dynamic>();
    map['id'] = _id;
    print("funn");
    map['title'] = _title;
    map['desc'] = _desc;
    map['date'] = _date;
    map['priority'] = _priority;

    return map;
  }

  // FromMapObject
  Note.fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._title = map['title'];
    this._desc = map['desc'];
    this._date = map['date'];
    this._priority = map['priority'];
  }
}
