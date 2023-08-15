// To parse this JSON data, do
//
//     final personProfile = personProfileFromJson(jsonString?);

import 'dart:convert';

PersonProfile personProfileFromJson(String str) {
  final jsonData = json.decode(str);
  return PersonProfile.fromJson(jsonData);
}

String? personProfileToJson(PersonProfile data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class PersonProfile {
  PersionProfile? persionProfile;

  PersonProfile({
    this.persionProfile,
  });

  factory PersonProfile.fromJson(Map<String, dynamic> json) => new PersonProfile(
    persionProfile: PersionProfile.fromJson(json["persion_profile"]),
  );

  Map<String?, dynamic> toJson() => {
    "persion_profile": persionProfile?.toJson(),
  };
}

class PersionProfile {
  String? name;
  String? age;
  String? userid;
  String? userphone;
  String? groupidx;
  String? groupname;
  String? regDate;
  String? quitDate;
  String? position;
  String? experience;
  String? married;
  bool? stateofyongbyung;

  PersionProfile({
    this.name,
    this.age,
    this.userid,
    this.userphone,
    this.groupidx,
    this.groupname,
    this.regDate,
    this.quitDate,
    this.position,
    this.experience,
    this.married,
    this.stateofyongbyung,
  });

  factory PersionProfile.fromJson(Map<String, dynamic> json) => new PersionProfile(
    name: json["name"],
    age: json["age"],
    userid: json["userid"],
    userphone: json["userphone"],
    groupidx: json["groupidx"],
    groupname: json["groupname"],
    regDate: json["reg_date"],
    quitDate: json["quit_date"],
    position: json["position"],
    experience: json["experience"],
    married: json["married"],
    stateofyongbyung: json["stateofyongbyung"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "age": age,
    "userid": userid,
    "userphone": userphone,
    "groupidx": groupidx,
    "groupname": groupname,
    "reg_date": regDate,
    "quit_date": quitDate,
    "position": position,
    "experience": experience,
    "married": married,
    "stateofyongbyung": stateofyongbyung,
  };
}
