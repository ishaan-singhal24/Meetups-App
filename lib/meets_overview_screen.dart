import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_drawer.dart';
import 'meets_grid.dart';

import 'meetup_details.dart';

class MeetsOverviewScreen extends StatefulWidget {
  @override
  State<MeetsOverviewScreen> createState() => _MeetsOverviewScreenState();
}

class _MeetsOverviewScreenState extends State<MeetsOverviewScreen> {
  static const routeName = "/meets-overview";
  // ...
  var _isInit = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Meetups',
        ),
      ),
      drawer: AppDrawer(),
      body: MeetsGrid(),
    );
  }
}
