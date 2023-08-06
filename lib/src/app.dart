import 'package:flutter/material.dart';
import 'ui/matchlist.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import './resources/repository.dart';
import './models/matchschedule_model.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? sDate = "20230824";
    DateTime dt = DateTime(2023, 06, 15);

    DateTime dt2 = dt.add(Duration(days: 7));
    for(int i=0; i <10; i++) {
      var date;
      if(i == 0)
        date = dt2.year.toString() + dt2.month.toString()+dt2.day.toString();
      else
        dt2 = dt2.add(Duration(days:7));
        date = dt2.year.toString() + dt2.month.toString()+dt2.day.toString();
      insertMatchSchedule(date);
    }
    //getMatchListFromFireStore();
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: MatchList(title:"Match일정"),
      ),
    );
  }
  void insertMatchSchedule(String date) async {
    FirebaseFirestore _f = FirebaseFirestore.instance;
    await _f.collection("matchdate").doc(date).set(
        {
          "name": "MatchSchedule",
          "matchdate":
          {
            "round": "Matchday 1",
            "startdate":"2023-09-31 07:00:00",
            "enddate": "2023-09-31 09:00:00",
            "location":"가산디지털운동장",
            "team1": "GridFC",
            "team2": "어울림"
          }
        }
    );
  }
}