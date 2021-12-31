import 'package:first_app/drawer.dart';
import 'package:flutter/material.dart';

class HomePagwe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      drawer: Drawerpage(),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
