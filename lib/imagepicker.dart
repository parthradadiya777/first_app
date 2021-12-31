import 'package:universal_platform/universal_platform.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Imagepicker1 extends StatefulWidget {
  @override
  State<Imagepicker1> createState() => _Imagepicker1State();
}

class _Imagepicker1State extends State<Imagepicker1> {
  File? _image;
  bool isWeb = UniversalPlatform.isWeb;
  final picker = ImagePicker();

  Future imagePicker() async {
    final pick = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      try {
        if (pick != null) {
          _image = File(pick.path);
        } else {
          Fluttertoast.showToast(msg: 'no selected');
        }
      } catch (e) {
        print(e);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Iicker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.deepPurple),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Web: ${UniversalPlatform.isWeb} \n "),
                    Expanded(
                        child: _image == null
                            ? Center(child: Text('No image Selected'))
                            : Image.file(_image!)),
                    ElevatedButton(
                        onPressed: () {
                          imagePicker();
                        },
                        child: Text('Select Image'))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
