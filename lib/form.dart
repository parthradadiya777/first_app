import 'package:flutter/material.dart';

class Formkey1 extends StatefulWidget {
  @override
  State<Formkey1> createState() => _Formkey1State();
}

class _Formkey1State extends State<Formkey1> {
  GlobalKey<FormState> key1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),
      body: Form(
          key: key1,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter First Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  // ignore: missing_return
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please fill text";
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please fill text';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      labelText: 'Enter  LastName',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (v) {
                    if (v!.isEmpty) {
                      return 'please fill text';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      labelText: 'Enter Phone Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                ),
              ),
              Container(
                child: MaterialButton(
                  onPressed: () {
                    if (key1.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Loading Data')));
                    }
                  },
                  child: Text('Submit'),
                ),
              ),
            ],
          )),
    );
  }
}
