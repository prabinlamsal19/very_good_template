// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import 'package:vg_flutter_template/app/core/enums.dart';

part 'user_model.g.dart';

@JsonSerializable()
class User {
  User({
    required this.email,
    required this.password,
    this.userName,
    this.fullName,
    this.age,
    this.gender,
    this.address,
  });

  final String email;
  final String password;
  final String? userName;
  final String? fullName;
  final int? age;
  final Gender? gender;
  final String? address;
}
