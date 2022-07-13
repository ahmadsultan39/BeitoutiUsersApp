// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_subscription_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentSubscriptionModel _$CurrentSubscriptionModelFromJson(
        Map<String, dynamic> json) =>
    CurrentSubscriptionModel(
      id: json['id'] as int,
      name: json['name'] as String,
      daysNumber: json['days_number'] as int,
      mealDeliveryTime: json['meal_delivery_time'] as String,
      startsAt: json['starts_at'] as String,
      endsAt: json['ends_at'] as String,
      chef:
          SubscriptionChefModel.fromJson(json['chef'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CurrentSubscriptionModelToJson(
        CurrentSubscriptionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'days_number': instance.daysNumber,
      'meal_delivery_time': instance.mealDeliveryTime,
      'starts_at': instance.startsAt,
      'ends_at': instance.endsAt,
      'chef': instance.chef,
    };
