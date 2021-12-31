import 'package:first_app/about.dart';
import 'package:first_app/contact.dart';
import 'package:first_app/drawer.dart';
import 'package:first_app/home.dart';
import 'package:first_app/listview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/hp': (context) => HomePagwe(),
        '/cp': (context) => Contact(),
        '/ap': (context) => About(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Bg Color',
      home: Contact(),
    );
  }
}

class BgColor extends StatefulWidget {
  @override
  _BgColorState createState() => _BgColorState();
}

class _BgColorState extends State<BgColor> {
  // var colors = [
  //   Colors.black,
  //   Colors.orange,
  //   Colors.deepPurple,
  //   Colors.grey,
  //   Colors.amber,
  //   Colors.indigo,
  //   Colors.limeAccent,
  // ];

  // var currentColor = Colors.white;
  // random() {
  //   var rand = Random().nextInt(colors.length);
  //   setState(() {
  //     currentColor = colors[rand];
  //   });
  // }

  // bool ison = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('BG Color'),
      // ),
      body: Scaffold(
        appBar: AppBar(
          title: Text('Drawer Demo'),
        ),
        // drawer: Drawerpage(),
      ),
    );
  }
}
        
    //      SafeArea(
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //     children: [
    //       Column(
    //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //         children: [
    //           Text(
    //             'My Metrics',
    //             style: TextStyle(
    //                 fontSize: MediaQuery.of(context).size.height * 0.07,
    //                 fontWeight: FontWeight.bold),
    //           ),
    //           Container(
    //             height: MediaQuery.of(context).size.height * 0.1,
    //             width: MediaQuery.of(context).size.width * 0.8,
    //             decoration: BoxDecoration(
    //               color: Colors.orangeAccent[200],
    //               borderRadius: BorderRadius.circular(
    //                   MediaQuery.of(context).size.width * 0.02),
    //             ),
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Padding(
    //                   padding: const EdgeInsets.all(8.0),
    //                   child: Row(
    //                     children: [
    //                       Container(
    //                         height: MediaQuery.of(context).size.height * 0.01,
    //                         width: MediaQuery.of(context).size.width * 0.3,
    //                         decoration: BoxDecoration(
    //                             color: Colors.black87,
    //                             borderRadius: BorderRadius.circular(10)),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //                 Padding(
    //                   padding: const EdgeInsets.only(left: 8.0),
    //                   child: Row(
    //                     children: [
    //                       Container(
    //                         decoration: BoxDecoration(
    //                             color: Colors.black87,
    //                             borderRadius: BorderRadius.circular(10)),
    //                         height: MediaQuery.of(context).size.height * 0.01,
    //                         width: MediaQuery.of(context).size.width * 0.5,
    //                       ),
    //                       SizedBox(
    //                         width: MediaQuery.of(context).size.width * 0.05,
    //                       ),
    //                       Icon(Icons.arrow_upward),
    //                       Text('5.4%',
    //                           style: TextStyle(
    //                             fontWeight: FontWeight.bold,
    //                             fontSize:
    //                                 MediaQuery.of(context).size.height * 0.02,
    //                           )),
    //                     ],
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           Container(
    //             height: MediaQuery.of(context).size.height * 0.1,
    //             width: MediaQuery.of(context).size.width * 0.8,
    //             decoration: BoxDecoration(
    //               color: Colors.lightBlueAccent,
    //               borderRadius: BorderRadius.circular(
    //                   MediaQuery.of(context).size.width * 0.02),
    //             ),
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Padding(
    //                   padding: const EdgeInsets.all(8.0),
    //                   child: Row(
    //                     children: [
    //                       Container(
    //                         height: MediaQuery.of(context).size.height * 0.01,
    //                         width: MediaQuery.of(context).size.width * 0.3,
    //                         decoration: BoxDecoration(
    //                             color: Colors.black87,
    //                             borderRadius: BorderRadius.circular(
    //                                 MediaQuery.of(context).size.width * 0.02)),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //                 Padding(
    //                   padding: const EdgeInsets.only(left: 8.0),
    //                   child: Row(
    //                     children: [
    //                       Container(
    //                         decoration: BoxDecoration(
    //                             color: Colors.black87,
    //                             borderRadius: BorderRadius.circular(10)),
    //                         height: MediaQuery.of(context).size.height * 0.01,
    //                         width: MediaQuery.of(context).size.width * 0.5,
    //                       ),
    //                       SizedBox(
    //                         width: MediaQuery.of(context).size.width * 0.05,
    //                       ),
    //                       Icon(Icons.arrow_upward),
    //                       Text('2.9%',
    //                           style: TextStyle(
    //                             fontWeight: FontWeight.bold,
    //                             fontSize:
    //                                 MediaQuery.of(context).size.height * 0.02,
    //                           )),
    //                     ],
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           Container(
    //             height: MediaQuery.of(context).size.height * 0.1,
    //             width: MediaQuery.of(context).size.width * 0.8,
    //             decoration: BoxDecoration(
    //               color: Colors.green,
    //               borderRadius: BorderRadius.circular(
    //                   MediaQuery.of(context).size.width * 0.02),
    //             ),
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Padding(
    //                   padding: const EdgeInsets.all(8.0),
    //                   child: Row(
    //                     children: [
    //                       Container(
    //                         height: MediaQuery.of(context).size.height * 0.01,
    //                         width: MediaQuery.of(context).size.width * 0.2,
    //                         decoration: BoxDecoration(
    //                             color: Colors.black87,
    //                             borderRadius: BorderRadius.circular(
    //                                 MediaQuery.of(context).size.width * 0.02)),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //                 Padding(
    //                   padding: const EdgeInsets.only(left: 8.0),
    //                   child: Row(
    //                     children: [
    //                       Container(
    //                         decoration: BoxDecoration(
    //                             color: Colors.black87,
    //                             borderRadius: BorderRadius.circular(10)),
    //                         height: MediaQuery.of(context).size.height * 0.01,
    //                         width: MediaQuery.of(context).size.width * 0.5,
    //                       ),
    //                       SizedBox(
    //                         width: MediaQuery.of(context).size.width * 0.05,
    //                       ),
    //                       Icon(Icons.arrow_downward),
    //                       Text('3.6%',
    //                           style: TextStyle(
    //                             fontWeight: FontWeight.bold,
    //                             fontSize:
    //                                 MediaQuery.of(context).size.height * 0.02,
    //                           )),
    //                     ],
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           Container(
    //             height: MediaQuery.of(context).size.height * 0.1,
    //             width: MediaQuery.of(context).size.width * 0.8,
    //             decoration: BoxDecoration(
    //               color: Colors.grey,
    //               borderRadius: BorderRadius.circular(
    //                   MediaQuery.of(context).size.width * 0.02),
    //             ),
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Padding(
    //                   padding: const EdgeInsets.all(8.0),
    //                   child: Row(
    //                     children: [
    //                       Container(
    //                         height: MediaQuery.of(context).size.height * 0.01,
    //                         width: MediaQuery.of(context).size.height * 0.08,
    //                         decoration: BoxDecoration(
    //                             color: Colors.black87,
    //                             borderRadius: BorderRadius.circular(10)),
    //                       ),
    //                       SizedBox(
    //                         width: MediaQuery.of(context).size.width * 0.03,
    //                       ),
    //                       Container(
    //                         height: MediaQuery.of(context).size.height * 0.01,
    //                         width: MediaQuery.of(context).size.width * 0.1,
    //                         decoration: BoxDecoration(
    //                             color: Colors.black87,
    //                             borderRadius: BorderRadius.circular(
    //                                 MediaQuery.of(context).size.width * 0.02)),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //                 Padding(
    //                   padding: const EdgeInsets.only(left: 8.0),
    //                   child: Row(
    //                     children: [
    //                       Container(
    //                         decoration: BoxDecoration(
    //                             color: Colors.black87,
    //                             borderRadius: BorderRadius.circular(10)),
    //                         height: MediaQuery.of(context).size.height * 0.01,
    //                         width: MediaQuery.of(context).size.width * 0.1,
    //                       ),
    //                       SizedBox(
    //                         width: MediaQuery.of(context).size.width * 0.47,
    //                       ),
    //                       Icon(Icons.arrow_upward),
    //                       Text(
    //                         '2.9%',
    //                         style: TextStyle(
    //                           fontWeight: FontWeight.bold,
    //                           fontSize:
    //                               MediaQuery.of(context).size.height * 0.02,
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // )

        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         Container(
        //           alignment: Alignment.center,
        //           height: 100,
        //           width: 100,
        //           decoration: BoxDecoration(
        //               color: Colors.blue, borderRadius: BorderRadius.circular(5)),
        //           child: Text('container 1', style: TextStyle()),
        //         ),
        //         Container(
        //           alignment: Alignment.center,
        //           height: 100,
        //           width: 100,
        //           decoration: BoxDecoration(
        //               color: Colors.orange,
        //               borderRadius: BorderRadius.circular(5)),
        //           child: Text('container 2'),
        //         ),
        //         Container(
        //           alignment: Alignment.center,
        //           height: 100,
        //           width: 100,
        //           decoration: BoxDecoration(
        //               color: Colors.green,
        //               borderRadius: BorderRadius.circular(5)),
        //           child: Text('container 3'),
        //         ),
        //       ],
        //     ),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         Column(
        //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //           children: [
        //             Container(
        //               alignment: Alignment.center,
        //               height: 100,
        //               width: 100,
        //               decoration: BoxDecoration(
        //                   color: Colors.blue,
        //                   borderRadius: BorderRadius.circular(5)),
        //               child: Text('container 4'),
        //             ),
        //             Container(
        //               alignment: Alignment.center,
        //               height: 100,
        //               width: 100,
        //               decoration: BoxDecoration(
        //                   color: Colors.orange,
        //                   borderRadius: BorderRadius.circular(5)),
        //               child: Text('container 5'),
        //             ),
        //             Container(
        //               alignment: Alignment.center,
        //               height: 100,
        //               width: 100,
        //               decoration: BoxDecoration(
        //                   color: Colors.green,
        //                   borderRadius: BorderRadius.circular(5)),
        //               child: Text('container 6'),
        //             ),
        //           ],
        //         )
        //       ],
        //     ),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         Column(
        //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //           children: [
        //             Container(
        //               alignment: Alignment.center,
        //               height: 100,
        //               width: 100,
        //               decoration: BoxDecoration(
        //                   color: Colors.blue,
        //                   borderRadius: BorderRadius.circular(5)),
        //               child: Text('container 7'),
        //             ),
        //             Container(
        //               alignment: Alignment.center,
        //               height: 100,
        //               width: 100,
        //               decoration: BoxDecoration(
        //                   color: Colors.orange,
        //                   borderRadius: BorderRadius.circular(5)),
        //               child: Text('container 8'),
        //             ),
        //             Container(
        //               alignment: Alignment.center,
        //               height: 100,
        //               width: 100,
        //               decoration: BoxDecoration(
        //                   color: Colors.green,
        //                   borderRadius: BorderRadius.circular(5)),
        //               child: Text('container 9'),
        //             ),
        //           ],
        //         )
        //       ],
        //     )
        //   ],
        // ),
        // );

    // ListView(
    //   children: [
    //     ListTile(
    //       leading: CircleAvatar(
    //         child: Image.network(
    //             'https://thumbs.dreamstime.com/b/business-technology-internet-network-concept-young-businessman-shows-word-employee-engagement-busine-112510836.jpg'),
    //       ),
    //       title: Text('Parth'),
    //       trailing: Text('08/07/2021'),
    //     ),
    //     SizedBox(height: 10),
    //     ListTile(
    //       leading: CircleAvatar(
    //         child: Image.network(
    //             'https://thumbs.dreamstime.com/b/business-technology-internet-network-concept-marketing-content-businessman-presses-button-employee-engagement-virtual-167123520.jpg'),
    //       ),
    //       title: Text('Sahin'),
    //       trailing: Text('08/10/2021'),
    //     ),
    //     SizedBox(height: 10),
    //     ListTile(
    //       leading: CircleAvatar(
    //         child: Image.network(
    //             'https://thumbs.dreamstime.com/b/problems-workplace-boss-critic-his-employee-his-b-behavior-rebuke-him-45545121.jpg'),
    //       ),
    //       title: Text('Jemin'),
    //       trailing: Text('08/11/2021'),
    //     ),
    //     SizedBox(height: 10),
    //     ListTile(
    //       leading: CircleAvatar(
    //         child: Image.network(
    //             'https://thumbs.dreamstime.com/b/hardware-store-employee-pretty-looking-camera-41254252.jpg'),
    //       ),
    //       title: Text('Harsh'),
    //       trailing: Text('08/12/2021'),
    //     ),
    //   ],
    // )

    // Image.network(
    //   'https://upload.wikimedia.org/wikipedia/commons/1/15/Arabis_hirsuta_-_Keila.jpg',
    //   height: 100.0,
    //   width: 200.0,
    // ),
    // );
  








    //    Center(
    //     child: AnimatedContainer(
    //       height: 100,
    //       width: 100,
    //       decoration: BoxDecoration(
    //           color: ison ? Colors.amber : Colors.orange,
    //           borderRadius: BorderRadius.all(
    //               ison ? Radius.circular(10) : Radius.circular(50))),
    //       curve: Curves.bounceIn,
    //       duration: Duration(seconds: 2),
    //       child: InkWell(
    //         onTap: () {
    //           setState(() {
    //             ison = true;
    //           });
    //         },
    //       ),
    //     ),
    //   ),
    // );
 





