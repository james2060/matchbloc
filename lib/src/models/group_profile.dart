// To parse this JSON data, do
//
//     final groupProfile = groupProfileFromJson(jsonString);

import 'dart:convert';

GroupProfile groupProfileFromJson(String str) {
  final jsonData = json.decode(str);
  return GroupProfile.fromJson(jsonData);
}

String groupProfileToJson(GroupProfile data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class GroupProfile {
  GroupProfileClass groupProfile;

  GroupProfile({
    this.groupProfile,
  });

  factory GroupProfile.fromJson(Map<String, dynamic> json) => new GroupProfile(
    groupProfile: GroupProfileClass.fromJson(json["group_profile"]),
  );

  Map<String, dynamic> toJson() => {
    "group_profile": groupProfile.toJson(),
  };
}

class GroupProfileClass {
  String groupidx;
  String groupname;
  String createDate;
  String memberCount;
  String experience;
  String homeLocation;
  String level;
  String desc;
  bool waitNewmember;
  bool openGroupInfo;

  GroupProfileClass({
    this.groupidx,
    this.groupname,
    this.createDate,
    this.memberCount,
    this.experience,
    this.homeLocation,
    this.level,
    this.desc,
    this.waitNewmember,
    this.openGroupInfo,
  });

  factory GroupProfileClass.fromJson(Map<String, dynamic> json) => new GroupProfileClass(
    groupidx: json["groupidx"],
    groupname: json["groupname"],
    createDate: json["create_date"],
    memberCount: json["member_count"],
    experience: json["experience"],
    homeLocation: json["home_location"],
    level: json["level"],
    desc: json["desc"],
    waitNewmember: json["wait_newmember"],
    openGroupInfo: json["open_group_info"],
  );

  Map<String, dynamic> toJson() => {
    "groupidx": groupidx,
    "groupname": groupname,
    "create_date": createDate,
    "member_count": memberCount,
    "experience": experience,
    "home_location": homeLocation,
    "level": level,
    "desc": desc,
    "wait_newmember": waitNewmember,
    "open_group_info": openGroupInfo,
  };
}
