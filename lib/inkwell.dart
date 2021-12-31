import 'package:flutter/material.dart';

class InkwellPage extends StatefulWidget {
  @override
  State<InkwellPage> createState() => _InkwellPageState();
}

class _InkwellPageState extends State<InkwellPage> {
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InkWell Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onDoubleTap: () {
                setState(() {
                  name = 'Run Double Tap';
                });
              },
              onTap: () {
                setState(() {
                  name = 'Run On Tap';
                });
              },
              onLongPress: () {
                setState(() {
                  name = 'Run Long Press';
                });
              },
              child: Container(
                height: 200,
                width: 200,
                color: Colors.amber,
                child: InkWell(
                  child: Text('Tap To change',
                      style: TextStyle(color: Colors.red, fontSize: 20)),
                ),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
              child: Text(
                name,
                style: TextStyle(fontSize: 20, color: Colors.deepPurple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Stack , positioned

// Center(
//   child: SizedBox(
//     height: 500,
//     width: 500,
//     child: Center(
//       child: Stack(
//         children: [
//           Container(height: 500, width: 500, color: Colors.black),
//           Container(height: 400, width: 400, color: Colors.red),
//           Positioned(
//               top: 200,
//               left: 200,
//               right: 120,
//               bottom: 70,
//               child: Container(
//                   height: 300, width: 300, color: Colors.orange)),
//           Container(height: 200, width: 200, color: Colors.yellow),
//         ],
//       ),
//     ),
//   ),
// ));

// Inkwell

//         child: Column(
//           children: [
//             InkWell(
//               child: Container(
//                 height: 200,
//                 width: 200,
//                 color: Colors.blue,
//                 child: Center(
//                   child: Text(
//                     'Tap To change',
//                     style: TextStyle(color: Colors.yellow),
//                   ),
//                 ),
//               ),
//               onTap: () {
//                 setState(() {
//                   iw = 'On Tap ';
//                 });
//               },
//               onLongPress: () {
//                 setState(() {
//                   iw = 'On Long Tap';
//                 });
//               },
//             ),
//             Container(
//               height: 200,
//               width: 200,
//               color: Colors.deepPurple,
//               child: Center(
//                   child: Text(iw, style: TextStyle(color: Colors.green))),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//   }
// }
