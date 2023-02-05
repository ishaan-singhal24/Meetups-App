import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meetups_app/app_drawer.dart';
import 'package:meetups_app/meets_grid.dart';

class MeetupList extends StatefulWidget {
  static const routeName = '/meetup-list';

  @override
  State<MeetupList> createState() => _MeetupListState();
}

class _MeetupListState extends State<MeetupList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meetup List"),
      ),
      drawer: AppDrawer(),
      body: MeetsGrid(),
    );
  }
}
