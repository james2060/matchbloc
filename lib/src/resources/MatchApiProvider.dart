import 'dart:async';
import 'dart:convert';
import '../models/matchinfo_model.dart';
import '../models/matchschedule_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MatchApiProvider {

  List<MatchScedule> ms = [];

  Future<List<MatchScedule> > fetchMatchList() async {
      CollectionReference<Map<String, dynamic>> collectionReference = FirebaseFirestore.instance.collection("matchdate");
      QuerySnapshot<Map<String, dynamic>> querySnapshot = await collectionReference.orderBy("matchdate.startdate",descending: true).get();

      ms.clear();
      for( var document in querySnapshot.docs) {
        ms.add(MatchScedule.fromJson(document.data()));
    }
      var itemcount = ms.length;

      print("match list size: $itemcount");

    return ms;
  }
}