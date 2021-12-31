import 'package:flutter/material.dart';

class Drawerpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        DrawerHeader(
          padding: EdgeInsets.zero,
          child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.pink),
            accountName: Text('Parth Radadiya'),
            accountEmail: Text('parthradadiya65@gmail.com'),
            currentAccountPicture: Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('P'),
              ),
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          subtitle: Text('Home Page'),
          onTap: () {
            Navigator.pushNamed(context, '/hp');
          },
        ),
        ListTile(
          leading: Icon(Icons.contact_page),
          title: Text('Contact'),
          subtitle: Text('Contact Page'),
          onTap: () {
            Navigator.pushNamed(context, '/cp');
          },
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: Text('About Us'),
          subtitle: Text('About Page'),
          onTap: () {
            Navigator.pushNamed(context, '/ap');
          },
        ),
      ]),
    );
  }
}
