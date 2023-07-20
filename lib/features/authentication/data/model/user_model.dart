// ignore: depend_on_referenced_packages
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vg_flutter_template/app/core/enums.dart';

part 'user_model_json.g.dart';
part 'user_model.g.dart';

@HiveType(typeId: 1)
class UserModel {
  UserModel({
    required this.email,
    required this.password,
    this.userName,
    this.fullName,
    this.age,
    this.gender,
    this.address,
  });
  @HiveField(0)
  final String email;
  @HiveField(1)
  final String password;
  final String? userName;
  final String? fullName;
  final int? age;
  final Gender? gender;
  final String? address;
}
