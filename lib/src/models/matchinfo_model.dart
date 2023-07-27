// To parse this JSON data, do
//
//     final matchInfo = matchInfoFromJson(jsonString);

import 'dart:convert';

MatchInfo matchInfoFromJson(String str) => MatchInfo.fromJson(json.decode(str));

String matchInfoToJson(MatchInfo data) => json.encode(data.toJson());

class MatchInfo {
  String name;
  List<Match> matches;

  MatchInfo({
    required this.name,
    required this.matches,
  });

  factory MatchInfo.fromJson(Map<String, dynamic> json) => MatchInfo(
    name: json["name"],
    matches: List<Match>.from(json["matches"].map((x) => Match.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "matches": List<dynamic>.from(matches.map((x) => x.toJson())),
  };
}

class Match {
  String round;
  DateTime startdate;
  DateTime enddate;
  String location;
  String team1;
  String team2;
  int matchresult;
  int numofparticipants;
  int team1Score;
  int team2Score;
  List<Scorer> scorer;

  Match({
    required this.round,
    required this.startdate,
    required this.enddate,
    required this.location,
    required this.team1,
    required this.team2,
    required this.matchresult,
    required this.numofparticipants,
    required this.team1Score,
    required this.team2Score,
    required this.scorer,
  });

  factory Match.fromJson(Map<String, dynamic> json) => Match(
    round: json["round"],
    startdate: DateTime.parse(json["startdate"]),
    enddate: DateTime.parse(json["enddate"]),
    location: json["location"],
    team1: json["team1"],
    team2: json["team2"],
    matchresult: json["matchresult"],
    numofparticipants: json["numofparticipants"],
    team1Score: json["team1score"],
    team2Score: json["team2score"],
    scorer: List<Scorer>.from(json["scorer"].map((x) => Scorer.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "round": round,
    "startdate": startdate.toIso8601String(),
    "enddate": enddate.toIso8601String(),
    "location": location,
    "team1": team1,
    "team2": team2,
    "matchresult": matchresult,
    "numofparticipants": numofparticipants,
    "team1score": team1Score,
    "team2score": team2Score,
    "scorer": List<dynamic>.from(scorer.map((x) => x.toJson())),
  };
}

class Scorer {
  String name;
  int score;
  int quarter;
  String assist;

  Scorer({
    required this.name,
    required this.score,
    required this.quarter,
    required this.assist,
  });

  factory Scorer.fromJson(Map<String, dynamic> json) => Scorer(
    name: json["name"],
    score: json["score"],
    quarter: json["Quarter"],
    assist: json["assist"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "score": score,
    "Quarter": quarter,
    "assist": assist,
  };
}
