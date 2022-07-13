// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chef_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChefModel _$ChefModelFromJson(Map<String, dynamic> json) => ChefModel(
      json['id'] as int,
      json['name'] as String,
      json['is_available'] as bool,
      json['profile_picture'] as String,
      json['chef_location'] as String,
      (json['chef_rate'] as num).toDouble(),
      json['chef_rate_count'] as int,
    );

Map<String, dynamic> _$ChefModelToJson(ChefModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'is_available': instance.isAvailable,
      'profile_picture': instance.profilePicture,
      'chef_location': instance.location,
      'chef_rate': instance.rate,
      'chef_rate_count': instance.rateCount,
    };
