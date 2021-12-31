import 'package:flutter/material.dart';

class Transformpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 100,
        color: Colors.black,
        child: Transform.rotate(
          alignment: Alignment.center,
          angle: 2,
          child: Container(
            height: 100,
            width: 100,
            padding: const EdgeInsets.all(8.0),
            color: const Color(0xFFE8581C),
            child: const Text('Apartment for rent!'),
          ),
        )

        // (
        //   alignment: Alignment.topRight,
        //   transform: Matrix4.skewY(0.3)..rotateZ(pi / 3.0),
        //   child: Container(
        //     padding: const EdgeInsets.all(8.0),
        //     color: const Color(0xFFE8581C),
        //     child: const Text('Apartment for rent!'),
        //   ),
        // ),
        );
  }
}
