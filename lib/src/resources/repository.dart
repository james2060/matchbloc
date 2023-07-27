import 'dart:async';
import 'matchapiprovider.dart';
import '../models/matchinfo_model.dart';

class Repository {

  final matchApiProvider = MatchApiProvider();

  Future<MatchInfo> fetchAllMatchInfo() => matchApiProvider.fetchMatchList();

}