import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class User {
  int userID;
  String userName;

  User(this.userID, this.userName);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

  // 命名构造函数
  User.empty();
}

User _$UserFromJson(Map<String, dynamic> json) {
  return User(json['userID'] as int, json['userName'] as String);
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'userID': instance.userID,
      'userName': instance.userName,
    };
