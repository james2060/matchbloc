// To parse this JSON data, do
//
//     final matchScedule = matchSceduleFromJson(jsonString);

import 'dart:convert';

class MatchScedule {
  String? name;
  Matchdate? matchdate;

  MatchScedule({
    this.name,
    this.matchdate,
  });

  factory MatchScedule.fromRawJson(String str) => MatchScedule.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MatchScedule.fromJson(Map<String, dynamic> json) => MatchScedule(
    name: json["name"],
    matchdate: json["matchdate"] == null ? null : Matchdate.fromJson(json["matchdate"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "matchdate": matchdate?.toJson(),
  };
}

class Matchdate {
  String? round;
  DateTime? startdate;
  DateTime? enddate;
  String? location;
  String? team1;
  String? team2;

  Matchdate({
    this.round,
    this.startdate,
    this.enddate,
    this.location,
    this.team1,
    this.team2,
  });

  factory Matchdate.fromRawJson(String str) => Matchdate.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Matchdate.fromJson(Map<String, dynamic> json) => Matchdate(
    round: json["round"],
    startdate: json["startdate"] == null ? null : DateTime.parse(json["startdate"]),
    enddate: json["enddate"] == null ? null : DateTime.parse(json["enddate"]),
    location: json["location"],
    team1: json["team1"],
    team2: json["team2"],
  );

  Map<String, dynamic> toJson() => {
    "round": round,
    "startdate": startdate?.toIso8601String(),
    "enddate": enddate?.toIso8601String(),
    "location": location,
    "team1": team1,
    "team2": team2,
  };
}
