import 'package:flutter/material.dart';

class Ui2 extends StatefulWidget {
  @override
  State<Ui2> createState() => _Ui2State();
}

class _Ui2State extends State<Ui2> {
  bool light = true;
  bool power = false;
  double _currentSliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 13, 83),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 49, 112),
        iconTheme: Theme.of(context).iconTheme,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Honey',
              style: TextStyle(color: Color.fromARGB(255, 140, 162, 191)),
            ),
            Icon(
              Icons.settings,
              color: Color.fromARGB(255, 131, 154, 185),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Center(
              child: Text('WELCOME HOME!',
                  style: TextStyle(
                      color: Color.fromARGB(255, 251, 251, 253), fontSize: 20)),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.bed,
                        color: Color.fromARGB(255, 251, 251, 253),
                        size: 50,
                      ),
                      Text(
                        'Bedroom',
                        style: TextStyle(
                            color: Color.fromARGB(255, 251, 251, 253)),
                      )
                    ],
                  ),
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 251, 251, 253),
                          // offset: const Offset(
                          //   5.0,
                          //   5.0,
                          // ),
                          blurRadius: 5.0,
                          spreadRadius: 1.0,
                        ),
                      ],
                      color: Color.fromARGB(255, 12, 28, 101),
                      borderRadius: BorderRadius.circular(10)),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.living,
                        color: Color.fromARGB(255, 29, 71, 154),
                        size: 50,
                      ),
                      Text(
                        'Living Room',
                        style: TextStyle(
                            color: Color.fromARGB(255, 251, 251, 253)),
                      )
                    ],
                  ),
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 12, 28, 101),
                      borderRadius: BorderRadius.circular(10)),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.kitchen,
                        color: Color.fromARGB(255, 29, 71, 154),
                        size: 50,
                      ),
                      Text(
                        'Kitchen',
                        style: TextStyle(
                            color: Color.fromARGB(255, 251, 251, 253)),
                      )
                    ],
                  ),
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 12, 28, 101),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.bathroom,
                        color: Color.fromARGB(255, 29, 71, 154),
                        size: 50,
                      ),
                      Text(
                        'Bathroom',
                        style: TextStyle(
                            color: Color.fromARGB(255, 251, 251, 253)),
                      )
                    ],
                  ),
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 12, 28, 101),
                      borderRadius: BorderRadius.circular(10)),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.meeting_room,
                        color: Color.fromARGB(255, 29, 71, 154),
                        size: 50,
                      ),
                      Text(
                        'Meeting Room',
                        style: TextStyle(
                            color: Color.fromARGB(255, 251, 251, 253)),
                      )
                    ],
                  ),
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 12, 28, 101),
                      borderRadius: BorderRadius.circular(10)),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.dining,
                        color: Color.fromARGB(255, 29, 71, 154),
                        size: 50,
                      ),
                      Text(
                        'Dining room',
                        style: TextStyle(
                            color: Color.fromARGB(255, 251, 251, 253)),
                      )
                    ],
                  ),
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 12, 28, 101),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
            Divider(
              color: Colors.white,
              height: 60,
            ),
            Column(
              children: [
                SwitchListTile(
                  title: Text(
                    'Light Control',
                    style: TextStyle(
                      color: Color.fromARGB(255, 251, 251, 253),
                    ),
                  ),
                  value: light,
                  onChanged: (bool value) {
                    setState(() {
                      light = false;
                      light = value;
                    });
                  },
                  secondary: const Icon(
                    Icons.lightbulb_outline,
                    size: 40,
                    color: Color.fromARGB(255, 0, 219, 207),
                  ),
                  activeColor: Color.fromARGB(255, 0, 199, 195),
                ),
                SwitchListTile(
                  title: Text('Power Supply',
                      style:
                          TextStyle(color: Color.fromARGB(255, 251, 251, 253))),
                  value: power,
                  onChanged: (bool value) {
                    setState(() {
                      power = true;
                      power = value;
                    });
                  },
                  secondary: const Icon(
                    Icons.power_sharp,
                    size: 40,
                    color: Color.fromARGB(255, 0, 219, 207),
                  ),
                  activeColor: Color.fromARGB(255, 0, 199, 195),
                ),
              ],
            ),
            Divider(
              height: 50,
              color: Colors.white,
            ),
            Column(
              children: [
                Text(
                  'Security level',
                  style: TextStyle(
                      color: Color.fromARGB(255, 251, 251, 253), fontSize: 20),
                ),
                SizedBox(
                  height: 50,
                ),
                SliderTheme(
                  child: Slider(
                    // thumbColor: Color.fromARGB(2, 175, 178, 197),
                    inactiveColor: Color.fromARGB(255, 21, 32, 88),
                    activeColor: Color.fromARGB(255, 42, 192, 255),
                    divisions: 4,
                    value: _currentSliderValue,
                    min: 1,
                    max: 5,
                    label: _currentSliderValue.round().toString(),
                    onChanged: (values) {
                      setState(() {
                        _currentSliderValue = values;
                      });
                    },
                  ),
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.red[700],
                    inactiveTrackColor: Colors.red[100],
                    trackShape: RoundedRectSliderTrackShape(),
                    trackHeight: 4.0,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                    thumbColor: Colors.redAccent,
                    overlayColor: Colors.red.withAlpha(32),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
                    tickMarkShape: RoundSliderTickMarkShape(),
                    activeTickMarkColor: Colors.red[700],
                    inactiveTickMarkColor: Colors.red[100],
                    valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                    valueIndicatorColor: Colors.redAccent,
                    valueIndicatorTextStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
