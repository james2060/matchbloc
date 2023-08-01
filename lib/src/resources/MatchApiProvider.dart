import 'dart:async';
import 'dart:convert';
import '../models/matchinfo_model.dart';
import '../models/matchschedule_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MatchApiProvider {

  Future<MatchInfo> fetchMatchList() async {

      CollectionReference<Map<String, dynamic>> collectionReference =
      FirebaseFirestore.instance.collection('matchdate');

      Future<List<Matchdate>> getMatchSchedule() async {
        CollectionReference<Map<String, dynamic>> collectionReference =
        FirebaseFirestore.instance.collection("matchdate");

        QuerySnapshot<Map<String, dynamic>> querySnapshot = await collectionReference.get();

        List<Matchdate> matches = [];
        for (var doc in querySnapshot.docs) {}
        return matches;
      }



    //FireStore DB로 부터 Collection에 특정 Document를 Read 하여 출력
    print('beginning import MatchList');
    FirebaseFirestore _firestore = FirebaseFirestore.instance;
    DocumentSnapshot<Map<String, dynamic>> _data = await _firestore.collection("matchinfo").doc("20230718").get();
    print('decoded json start');
    print(MatchInfo.fromJson(json.decode(_data.data().toString())));
    print('decoded json end');
    return MatchInfo.fromJson(json.decode(_data.data().toString()));
  }
}