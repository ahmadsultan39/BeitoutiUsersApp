// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_meal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionMealModel _$SubscriptionMealModelFromJson(
        Map<String, dynamic> json) =>
    SubscriptionMealModel(
      json['meal_id'] as int,
      json['name'] as String,
      json['price'] as int,
      json['image'] as String,
      (json['rating'] as num?)?.toDouble(),
      json['rates_count'] as int,
      json['day_number'] as int,
      json['meal_date'] as String,
    );

Map<String, dynamic> _$SubscriptionMealModelToJson(
        SubscriptionMealModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'image': instance.image,
      'rating': instance.rating,
      'meal_id': instance.id,
      'rates_count': instance.ratingCount,
      'day_number': instance.day,
      'meal_date': instance.date,
    };
