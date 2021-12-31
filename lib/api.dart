import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api extends StatefulWidget {
  @override
  State<Api> createState() => _ApiState();
}

class _ApiState extends State<Api> {
  var isloanding = false;
  List resbody = [];
  static final url = 'http://nulled-download.com/wallpapper/apilist.php';

  Future data1() async {
    final responce = await http.get(Uri.parse(url));
    final d = jsonDecode(responce.body);

    resbody = d;

    setState(() {
      isloanding = true;
    });
  }

  @override
  void initState() {
    data1();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Api'),
        ),
        body: isloanding
            ? ListView.builder(
                itemCount: resbody.length,
                itemBuilder: (contex, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: Colors.amber,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Container(
                                height: 50,
                                color: Colors.black,
                                child: Row(
                                  children: [
                                    Image.network(resbody[index]['data']),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(',',
                                        style: TextStyle(color: Colors.white)),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Flexible(
                                      child: Text(
                                        "E-mail: " + resbody[index]['email'],
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                })
            : Center(child: CircularProgressIndicator()));
  }
}
