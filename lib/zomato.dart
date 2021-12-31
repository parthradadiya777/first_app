import 'package:flutter/material.dart';

class Zomato extends StatefulWidget {
  @override
  State<Zomato> createState() => _ZomatoState();
}

class _ZomatoState extends State<Zomato> {
  String dropdownValue = 'one';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          // alignment: Alignment.center,
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Opacity(
                  opacity: 0.65,
                  child: Image.network(
                    'https://media.istockphoto.com/photos/healthy-food-for-lower-cholesterol-and-heart-care-shot-on-wooden-picture-id1279763992?b=1&k=20&m=1279763992&s=170667a&w=0&h=PP9Z4NeTcx5iZodFRxA4bbRG7QgXef9LCQdIh5lr7oY=',
                    // fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter Phone Number',
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                        ),
                        height: 50,
                        width: 350,
                      ),
                      Positioned(left: 5, child: Icon(Icons.flag)),
                      // Positioned(
                      //     left: 35,
                      //     child: DropdownButton<String>(
                      //       value: dropdownValue,
                      //       icon: const Icon(Icons.arrow_downward),
                      //       iconSize: 24,
                      //       elevation: 16,
                      //       style: const TextStyle(color: Colors.deepPurple),
                      //       underline: Container(
                      //         height: 2,
                      //         color: Colors.deepPurpleAccent,
                      //       ),
                      //       onChanged: (String? newValue) {
                      //         setState(() {
                      //           dropdownValue = newValue!;
                      //         });
                      //       },
                      //       items: <String>['One', 'Two', 'Free', 'Four']
                      //           .map<DropdownMenuItem<String>>((String value) {
                      //         return DropdownMenuItem<String>(
                      //           value: value,
                      //           child: Text(value),
                      //         );
                      //       }).toList(),
                      //     )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Send OTP',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.black,
                    ),
                    height: 50,
                    width: 350,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    '------------------------------ OR ------------------------------',
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Text('Continue With Gmail'),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.white,
                          ),
                          height: 60,
                          width: 350,
                        ),
                        Positioned(left: 20, child: Icon(Icons.email)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Text('Facebook'),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Colors.white,
                              ),
                              height: 60,
                              width: 150,
                            ),
                            Positioned(left: 20, child: Icon(Icons.facebook)),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Text('Google'),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Colors.white,
                              ),
                              height: 60,
                              width: 150,
                            ),
                            Positioned(
                                left: 20, child: Icon(Icons.g_mobiledata)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'By continuting, you agree to our',
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Term of Services Privacy Policy Content Policy',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
