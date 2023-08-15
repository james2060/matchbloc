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
  //경기 일정 등록.
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
  //앱 회워가입을 한 후에 회원 정보를 완성한다. the key is userid
  void insertUserInfo(String userid) async {
    FirebaseFirestore _f = FirebaseFirestore.instance;
    await _f.collection("matchdate").doc(userid).set(
        {
            "persion_profile":{
            "name":"kisookang",
            "age": "44",
            "userid":"verynicesoo78@gmail.com",
            "userphone":"01028654577",
            "groupidx": "1",
            "groupname": "GRIDFC",
            "reg_date":"2019-09-09",
            "quit_date":"2022-09-09",
            "position":"AM",
            "experience":"19year",
            "married":"single",
            "stateofyongbyung":false
          }
        }
    );
  }
  //Club을 생성한다.
  void insertGroupInfo(String groupname) async {
    FirebaseFirestore _f = FirebaseFirestore.instance;
    await _f.collection("groupinfo").doc(groupname).set(
        {
          "group_profile":{
            "groupidx": "1",
            "groupname": "GRIDFC",
            "create_date":"2019-09-09",
            "member_count":"AM",
            "experience":"19year",
            "home_location":"서울디지털운동장",
            "createdby": "verynicesoo78@gmail.com",
            "level":"하",
            "desc":"we are the good club",
            "wait_newmember":false,
            "open_group_info": true
          }
        }
    );
  }
}