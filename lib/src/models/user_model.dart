import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  int id;
  String username;
  String token;

  UserModel({
    this.id,
    @required this.username,
    this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  bool operator ==(other) => other is UserModel && other.id == id;

  @override
  int get hashCode => super.hashCode ^ id.hashCode ^ username.hashCode;
}
