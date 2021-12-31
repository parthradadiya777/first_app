import 'package:flutter/material.dart';

class ListViewBuilderpage extends StatefulWidget {
  @override
  State<ListViewBuilderpage> createState() => _ListViewBuilderpageState();
}

class _ListViewBuilderpageState extends State<ListViewBuilderpage> {
  List language = ['C', 'c++', 'dart', 'java', 'python', 'html'];

  var colors = [
    Colors.black,
    Colors.orange,
    Colors.deepPurple,
  ];

  Color cardcolors(int index) {
    Color c;
    index += 1;
    if (index % 3 == 0) {
      c = colors[2];
    } else if (index % 3 == 1) {
      c = colors[1];
    } else {
      c = colors[0];
    }
    return c;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            // color: (index % 2 == 0) ? Colors.deepPurple : Colors.orange,
            color: cardcolors(index),
            child: Text(language[index]),
          );
        },
        itemCount: language.length,
      ),
    );
  }
}
