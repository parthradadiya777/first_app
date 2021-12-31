import 'package:flutter/material.dart';

class TextFieldPage extends StatelessWidget {
  TextEditingController fn = TextEditingController();
  TextEditingController ln = TextEditingController();
  TextEditingController ps = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Employee Details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: fn,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'Enter First Name',
                  labelText: 'First Name'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: ln,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'Enter Last Name',
                  labelText: 'Last Name'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: ps,
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'Enter Password',
                  labelText: 'Password'),
            ),
          ),
          // MaterialButton(

          //   onPressed: () {
          //     return showDialog(
          //         context: context,
          //         builder: (contex) {
          //           return AlertDialog(
          //             title: Text('Employee List'),
          //             content: Column(
          //               mainAxisAlignment: MainAxisAlignment.start,
          //               mainAxisSize: MainAxisSize.min,
          //               children: [
          //                 Text("First Name: " + fn.text),
          //                 Text("Last Name: " + ln.text),
          //                 Text("Password: " + ps.text),
          //               ],
          //             ),
          //             actions: [
          //               FloatingActionButton(
          //                 onPressed: () {
          //                   Navigator.of(context).pop();
          //                 },
          //                 child: Text('Ok'),
          //               ),
          //             ],
          //           );
          //         });
          //   },
          //   child: Text(
          //     'Login',
          //     style: TextStyle(color: Colors.white),
          //   ),
          //   color: Colors.blue,
          // )
        ],
      ),
    );
  }
}
