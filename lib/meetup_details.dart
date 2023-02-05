import 'package:flutter/widgets.dart';
import 'meet.dart';
import 'package:flutter/material.dart';

class MeetUps with ChangeNotifier {
  List<MyList> _myList = [
    MyList(
      id: "m1",
      event: "SCIENCE DAY",
      speaker: "Mr. Abhay Jain",
      topic: "Science and Inovation",
    ),
    MyList(
      id: "m2",
      event: "PLACEMENT DAY",
      speaker: "Ms. Sakshi Deshmukh",
      topic: "Placement and Future",
    ),
    MyList(
      id: "m3",
      event: "FOUNDATION DAY",
      speaker: "Mr. Dilip Agrawal",
      topic: "Youth Motivation",
    ),
  ];
  List<MyList> get mylist {
    return [..._myList];
  }

  MyList findById(String id) {
    return _myList.firstWhere((me) => me.id == id);
  }
}
