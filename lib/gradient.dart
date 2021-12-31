import 'package:flutter/material.dart';

class Gri extends StatelessWidget {
  List c = [
    Colors.yellow,
    Colors.red,
    Colors.blue,
    Colors.brown,
    Colors.redAccent,
    Colors.cyan,
    Colors.indigoAccent,
    Colors.limeAccent,
    Colors.orangeAccent,
    Colors.lightBlue,
    Colors.pink,
    Colors.deepOrange
  ];

  List icon = [
    Icons.home,
    Icons.email,
    Icons.alarm,
    Icons.wallet_giftcard,
    Icons.backpack,
    Icons.book,
    Icons.camera,
    Icons.person,
    Icons.print,
    Icons.phone,
    Icons.notes,
    Icons.music_note,
  ];
  List<String> text = [
    'Home',
    'Email',
    'Alarm',
    'Wallet',
    'backup',
    'Book',
    'Camera',
    'Person',
    'Print',
    'Phone',
    'Notes',
    'Music',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
      ),
      body: GridView.builder(
        itemCount: icon.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (contex, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: c[index],
                ),
                height: 80,
                width: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      icon[index],
                    ),
                    Text(text[index]),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
