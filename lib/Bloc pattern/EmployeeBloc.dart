import 'dart:async';

import 'package:first_app/Bloc%20pattern/Employee.dart';

/// TODO : imports
/// TODO : List of employess
/// TODO : Stream controllers
/// TODO: Stream sink getter
/// TODO: Construcor - add data;
/// TODO: listern to changes
/// TODO: core Functions
/// TODO: dispose

class EmployeeBloc {
  /// sink to add in pipe
  ///  stream to get data from pipe
  ///  by pipe data flow(stream)

  List<Employee> _emplist = [
    Employee(1, 'parth', 100000),
    Employee(2, 'Harsh', 10000),
    Employee(3, 'Jemin', 10000),
    Employee(4, 'Surani', 1000),
  ];

  // streamcontrollers

  final _empListStreamController = StreamController<List<Employee>>();
  final _empListincController = StreamController<Employee>();
  final _empListdecController = StreamController<Employee>();

  // sink getter

  Stream<List<Employee>> get empListStream => _empListStreamController.stream;
  StreamSink<List<Employee>> get empListsink => _empListStreamController.sink;
  StreamSink<Employee> get empinsink => _empListincController.sink;
  StreamSink<Employee> get empdecsink => _empListdecController.sink;

  EmployeeBloc() {
    _empListStreamController.add(_emplist);

    _empListincController.stream.listen(_incSalary);
    _empListdecController.stream.listen(_decSalary);
  }

  _incSalary(Employee emp) {
    double? sal = emp.salary;
    double dsal = sal! * 20 / 100;
    _emplist[emp.id! - 1].salary = sal + dsal;
    empListsink.add(_emplist);
  }

  _decSalary(Employee emp) {
    double? sal = emp.salary;
    double dsal = sal! * 20 / 100;
    _emplist[emp.id! - 1].salary = sal - dsal;
    empListsink.add(_emplist);
  }

  void dispose() {
    _empListStreamController.close();
    _empListincController.close();
    _empListdecController.close();
  }
}
