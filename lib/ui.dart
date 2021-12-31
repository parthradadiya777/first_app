import 'package:flutter/material.dart';

class Ui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.deepOrange.shade800,
                          Colors.orange.shade400,
                        ]),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment(0, 1.4),
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.pink.shade800,
                                Colors.pinkAccent
                              ]),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              'parth',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 250, bottom: 5),
                            child: CircleAvatar(
                              child: Icon(
                                Icons.arrow_back,
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                Positioned(
                  top: 50,
                  left: 100,
                  child: Column(
                    children: [
                      CircleAvatar(
                        child: Icon(Icons.person),
                      ),
                      Text('@Parth Radadiya'),
                      Text('parthradadiya65@gmail.com')
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Account Info',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ],
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text(
                      'Name',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Parth Radadiya'),
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text(
                      'Mobile',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('+91-6353907583'),
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text(
                      'Email',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('parthradadiya65@gmail.com'),
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text(
                      'Address',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Gajera School,Katargam,Surat-395004'),
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text(
                      'Name',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Parth Radadiya'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
