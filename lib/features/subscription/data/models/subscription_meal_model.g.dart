// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_meal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionsMealModel _$SubscriptionsMealModelFromJson(
        Map<String, dynamic> json) =>
    SubscriptionsMealModel(
      name: json['name'] as String,
      price: json['price'] as int,
      image: json['image'] as String,
      rating: (json['rating'] as num?)?.toDouble(),
      mealDate: json['meal_date'] as String,
      ratesCount: json['rates_count'] as int,
      mealId: json['meal_id'] as int,
      daysNumber: json['day_number'] as int,
    );

Map<String, dynamic> _$SubscriptionsMealModelToJson(
        SubscriptionsMealModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'image': instance.image,
      'rating': instance.rating,
      'meal_id': instance.mealId,
      'rates_count': instance.ratesCount,
      'day_number': instance.daysNumber,
      'meal_date': instance.mealDate,
    };
