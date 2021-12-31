import 'dart:convert';

import 'package:first_app/firebase/view.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Textform1 extends StatefulWidget {
  @override
  State<Textform1> createState() => _Textform1State();
}

class _Textform1State extends State<Textform1> {
  final form = GlobalKey<FormState>();
  String? title;

  void writeData() async {
    form.currentState!.save();
    var url =
        'https://fir-realtime-ed3c1-default-rtdb.firebaseio.com/' + 'data.json';

    try {
      final response = await http.post(
        Uri.parse(url),
        body: json.encode({'title': title}),
      );
    } catch (error) {
      throw error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase Demo'),
      ),
      body: Form(
          key: form,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Enter Title'),
                  onSaved: (v) {
                    title = v;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                  onPressed: writeData,
                  color: Colors.green,
                  child: Text('Create'),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (c) => ViewData()));
                  },
                  color: Colors.green,
                  child: Text('View'),
                ),
              ],
            ),
          )),
    );
  }
}
