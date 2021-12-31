import 'dart:convert';
import 'package:first_app/sqllite/database_helper.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sqflite/sqflite.dart';
import 'package:firebase_database/firebase_database.dart';

class ViewData extends StatefulWidget {
  @override
  State<ViewData> createState() => _ViewDataState();
}

class _ViewDataState extends State<ViewData> {
  @override
  void initState() {
    super.initState();
    readData();
  }

  bool islooading = true;
  List<String> list = [];

  Future<void> delete() async {
    var url =
        'https://fir-realtime-ed3c1-default-rtdb.firebaseio.com/' + 'data.json';

    final responce = await http.get(Uri.parse(url));

    final d = jsonDecode(responce.body) as Map<String, dynamic>;

    d.forEach((key, value) {
      print(d.remove(value['data']['title']));
    });
  }

  Future<void> readData() async {
    var url =
        'https://fir-realtime-ed3c1-default-rtdb.firebaseio.com/' + 'data.json';

    try {
      final responce = await http.get(Uri.parse(url));
      final d = jsonDecode(responce.body) as Map<String, dynamic>;
      if (d == null) {
        return;
      }
      d.forEach((id, data) {
        list.add(data['title']);
      });

      setState(() {
        islooading = false;
      });
    } catch (error) {
      throw error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Data'),
      ),
      body: islooading
          ? CircularProgressIndicator()
          : ListView.builder(
              itemCount: list.length,
              itemBuilder: (contex, index) {
                return Container(
                  height: 50,
                  child: Center(
                    child: Row(
                      children: [
                        Text(
                          list[index],
                          style: TextStyle(color: Colors.green),
                        ),
                        IconButton(
                          onPressed: delete,
                          icon: Icon(Icons.delete),
                        ),
                      ],
                    ),
                  ),
                );
              }),
    );
  }
}
