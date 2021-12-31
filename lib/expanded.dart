import 'package:flutter/material.dart';

class Exp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.black,
              child: Text(
                'Expended',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.orange,
              child: Text('Expanded'),
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.pink,
              child: Text('flex'),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.deepOrangeAccent,
              child: Text('flex'),
            ),
          ),
        ],
      ),
    );
  }
}
