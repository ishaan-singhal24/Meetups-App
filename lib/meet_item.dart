import 'package:flutter/material.dart';

import 'meet_details.dart';

class MeetItem extends StatelessWidget {
  final String id;
  final String event;
  final String speaker;
  final String topic;

  MeetItem(
    this.id,
    this.event,
    this.speaker,
    this.topic,
  );

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
            MeetDetails.routeName,
            arguments: id,
          );
        },
        child: Text(topic),
      ),
      footer: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridTileBar(
            backgroundColor: Colors.black87,
            title: Text(
              event,
              textAlign: TextAlign.center,
            )),
      ),
    );
  }
}
