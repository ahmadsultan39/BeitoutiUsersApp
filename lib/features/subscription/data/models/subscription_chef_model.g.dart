// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_chef_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionChefModel _$SubscriptionChefModelFromJson(
        Map<String, dynamic> json) =>
    SubscriptionChefModel(
      id: json['id'] as int,
      name: json['name'] as String,
      location: json['location'] as String?,
      profilePicture: json['profile_picture'] as String,
    );

Map<String, dynamic> _$SubscriptionChefModelToJson(
        SubscriptionChefModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'profile_picture': instance.profilePicture,
    };
