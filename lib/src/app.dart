import 'package:flutter/material.dart';
import 'ui/matchlist.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? sDate = "20230812";

    //insertMatchSchedule(sDate);

    // TODO: implement build
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: MatchList(),
      ),
    );
  }

  //FireStore DB로 부터 Collection에 특정 Document를 Read 하여 출력
  void getSampledataFromFireStore() async{
    print('FireStore Data 가져오기 시작');
    FirebaseFirestore _firestore = FirebaseFirestore.instance;
    DocumentSnapshot<Map<String, dynamic>> _data = await _firestore.collection("matchinfo").doc("20230718").get();

    print(_data.data());

    print('firestore Data 가져오기 완료');
  }
  void insertMatchSchedule(String date) async {
    FirebaseFirestore _f = FirebaseFirestore.instance;
    await _f.collection("matchdate").doc(date).set(
        {
          "name": "MatchSchedule",
          "matchdate":
          {
            "round": "Matchday 1",
            "startdate":"2023-07-31 09:00:00",
            "enddate": "2023-07-31 09:00:00",
            "location":"가산디지털운동장",
            "team1": "GridFC",
            "team2": "스트레인져스"
          }
        }
    );
  }
//FireStore DB에 Collection과 Docuemnt를 생성(없으면 생성됨)하여 데이터를 저장
  void insertSampleDdataToFireStore() async {
    FirebaseFirestore _firestore = FirebaseFirestore.instance;
    await _firestore.collection("matchinfo").doc("20230805").set(
        {
          "name": "Matches",
          "matches": [
            {
              "round": "2",
              "startdate":"2023-08-05 07:00:00",
              "enddate": "2023-08-05 09:00:00",
              "location":"가산디지털운동장",
              "team1": "GridFC",
              "team2": "FCAya",
              "matchresult": 0,
              "numofparticipants": 0,
              "team1score": 1,
              "team2score": 2,
              "scorer":[
                { "name":"강기수", "score":1, "Quarter":1, "assist":"김백환" },
                { "name":"강기수", "score":1, "Quarter":2,"assist":"김백환"  },
                { "name":"강기수", "score":1, "Quarter":3,"assist":"김백환"  }
              ]
            },
            {
              "round": "Matchday 2",
              "startdate":"2023-07-31 07:00:00",
              "enddate": "2023-07-31 09:00:00",
              "location":"가산디지털운동장",
              "team1": "GridFC",
              "team2": "이랜드",
              "matchresult": 0,
              "numofparticipants": 13,
              "team1score": 1,
              "team2score": 2,
              "scorer":[
                { "name":"강기수", "score":1, "Quarter":1,"assist":"김백환" },
                { "name":"강기수", "score":1, "Quarter":2,"assist":"김백환"  },
                { "name":"강기수", "score":1, "Quarter":3,"assist":"김백환"  }
              ]
            }

          ]
        }
    );
  }
}