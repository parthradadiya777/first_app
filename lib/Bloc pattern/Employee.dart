class Employee {
  int? _id;
  String? _name;
  double? _salary;

  Employee(this._id, this._name, this._salary);

  int? get id => this._id;

  set id(int? value) => this._id = value;

  String? get name => this._name;

  set name(value) => this._name = value;

  double? get salary => this._salary;

  set salary(value) => this._salary = value;
}
