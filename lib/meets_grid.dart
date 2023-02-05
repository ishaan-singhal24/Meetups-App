import 'package:flutter/material.dart';
import 'meetup_details.dart';
import 'package:provider/provider.dart';

import 'meet_item.dart';

class MeetsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final meetsData = Provider.of<MeetUps>(context);
    final meets = meetsData.mylist;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: meets.length,
      itemBuilder: (ctx, i) => MeetItem(
        meets[i].id,
        meets[i].event,
        meets[i].speaker,
        meets[i].topic,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisSpacing: 10,
      ),
    );
  }
}
