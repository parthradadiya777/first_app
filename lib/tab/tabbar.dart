import 'package:first_app/tab/first.dart';
import 'package:first_app/tab/second.dart';
import 'package:flutter/material.dart';

class TabBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab Bar'),
          bottom: TabBar(
            tabs: [
              Text('First Tab'),
              Text('Second Tab'),
            ],
          ),
        ),
        body: TabBarView(children: [
          First(),
          Second(),
        ]),
      ),
    ));
  }
}
