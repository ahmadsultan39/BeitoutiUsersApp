// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_chef_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MealChefModel _$MealChefModelFromJson(Map<String, dynamic> json) =>
    MealChefModel(
      id: json['id'] as int,
      name: json['name'] as String,
      location: json['location'] as String,
      deliveryStartsAt: json['delivery_starts_at'] as String,
      remainingAvailableChefMealsCount:
          json['remaining_available_chef_meals_count'] as int,
      deliveryEndsAt: json['delivery_ends_at'] as String,
    );

Map<String, dynamic> _$MealChefModelToJson(MealChefModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'remaining_available_chef_meals_count':
          instance.remainingAvailableChefMealsCount,
      'delivery_starts_at': instance.deliveryStartsAt,
      'delivery_ends_at': instance.deliveryEndsAt,
    };
