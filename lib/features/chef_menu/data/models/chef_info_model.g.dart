// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chef_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChefInfoModel _$ChefInfoModelFromJson(Map<String, dynamic> json) =>
    ChefInfoModel(
      json['name'] as String,
      json['delivery_starts_at'] as String,
      json['delivery_ends_at'] as String,
      json['is_available'] as bool,
      json['location_name'] as String,
      (json['ratings'] as num).toDouble(),
      json['rates_count'] as int,
      json['orders_count'] as int,
      json['max_meals_per_day'] as int,
      json['remaining_available_chef_meals_count'] as int,
    );

Map<String, dynamic> _$ChefInfoModelToJson(ChefInfoModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'delivery_starts_at': instance.deliveryStartTime,
      'delivery_ends_at': instance.deliveryEndTime,
      'is_available': instance.isAvailable,
      'location_name': instance.location,
      'ratings': instance.rating,
      'rates_count': instance.ratesCount,
      'orders_count': instance.ordersCount,
      'max_meals_per_day': instance.maxMealsPerDay,
      'remaining_available_chef_meals_count':
          instance.remainingAvailableMealsCount,
    };
