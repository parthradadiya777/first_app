import 'package:flutter/material.dart';

import 'drawer.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Page'),
      ),
      drawer: Drawerpage(),
      body: Center(
        child: Text('Contact Page'),
      ),
    );
  }
}
