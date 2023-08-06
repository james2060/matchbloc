import 'dart:async';
import 'matchapiprovider.dart';
import '../models/matchinfo_model.dart';
import '../models/matchschedule_model.dart';
class Repository {

  final matchApiProvider = MatchApiProvider();

  Future<List<MatchScedule>> fetchAllMatchInfo() => matchApiProvider.fetchMatchList();

}