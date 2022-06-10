// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_chef_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeChefModel _$HomeChefModelFromJson(Map<String, dynamic> json) =>
    HomeChefModel(
      id: json['id'] as int,
      name: json['name'] as String,
      profilePicture: json['profile_picture'] as String?,
    );

Map<String, dynamic> _$HomeChefModelToJson(HomeChefModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.profilePicture,
    };
