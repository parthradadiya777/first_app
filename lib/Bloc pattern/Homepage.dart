import 'package:first_app/Bloc%20pattern/Employee.dart';
import 'package:first_app/Bloc%20pattern/EmployeeBloc.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final EmployeeBloc _employeeBloc = EmployeeBloc();

  @override
  void dispose() {
    // TODO: implement dispose
    _employeeBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee App'),
      ),
      body: Container(
        child: StreamBuilder<List<Employee>>(
            stream: _employeeBloc.empListStream,
            builder:
                (BuildContext context, AsyncSnapshot<List<Employee>> snapshot) {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${snapshot.data![index].id}',
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                Text(
                                  '${snapshot.data![index].name}',
                                  style: TextStyle(fontSize: 18.0),
                                ),
                                Text(
                                  '${snapshot.data![index].salary!.round()}',
                                  style: TextStyle(fontSize: 16.0),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: IconButton(
                                onPressed: () {
                                  _employeeBloc.empinsink
                                      .add(snapshot.data![index]);
                                },
                                icon: Icon(Icons.thumb_up)),
                            color: Colors.green,
                          ),
                          Container(
                            child: IconButton(
                                onPressed: () {
                                  _employeeBloc.empdecsink
                                      .add(snapshot.data![index]);
                                },
                                icon: Icon(Icons.thumb_down)),
                            color: Colors.red,
                          )
                        ],
                      ),
                    );
                  });
            }),
      ),
    );
  }
}
