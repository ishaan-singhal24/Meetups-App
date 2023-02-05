import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_drawer.dart';
import 'meetup_details.dart';

class MeetDetails extends StatelessWidget {
  static const routeName = '/meet-detail';

  @override
  Widget build(BuildContext context) {
    final meetId =
        ModalRoute.of(context)!.settings.arguments as String; // is the id!
    final loadedMeet = Provider.of<MeetUps>(
      context,
      listen: false,
    ).findById(meetId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedMeet.event),
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Text(
                loadedMeet.topic,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              width: double.infinity,
              child: Text(
                loadedMeet.topic,
                textAlign: TextAlign.center,
                softWrap: true,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              width: double.infinity,
              child: Text(
                loadedMeet.speaker,
                textAlign: TextAlign.center,
                softWrap: true,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
