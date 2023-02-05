import 'package:flutter/material.dart';
import 'package:meetups_app/basic_info_page.dart';
import 'package:meetups_app/meet_details.dart';
import 'package:meetups_app/meets_overview_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text("Hello Friend!"),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            // leading: Icon(Icons.shop),
            title: Text("Basic Info"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/basic-info');
            },
          ),
          Divider(),
          ListTile(
            // leading: Icon(Icons.shop),
            title: Text("Meet Up List"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/meetup-list');
            },
          ),
          Divider(),
          ListTile(
            // leading: Icon(Icons.shop),
            title: Text("Meet Up Details"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/meets-overview');
            },
          ),
        ],
      ),
    );
  }
}
