// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: unused_element
User _$UserFromJson(Map<String, dynamic> json) => User(
      email: json['email'] as String,
      password: json['password'] as String,
      userName: json['userName'] as String?,
      fullName: json['fullName'] as String?,
      age: json['age'] as int?,
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      address: json['address'] as String?,
    );

// ignore: unused_element
Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'userName': instance.userName,
      'fullName': instance.fullName,
      'age': instance.age,
      'gender': _$GenderEnumMap[instance.gender],
      'address': instance.address,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.other: 'other',
};
