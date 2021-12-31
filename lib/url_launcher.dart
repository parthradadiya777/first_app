import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLaunch extends StatelessWidget {
  var u = 'https://www.google.com';

  void launchurl() async =>
      await canLaunch(u) ? await launch(u) : throw 'Could not $u';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Url Launcher'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  launchurl();
                },
                child: Text('Go To Url'))
          ],
        ),
      ),
    );
  }
}
