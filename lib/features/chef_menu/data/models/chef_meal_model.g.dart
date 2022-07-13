// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chef_meal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChefMealModel _$ChefMealModelFromJson(Map<String, dynamic> json) =>
    ChefMealModel(
      json['id'] as int,
      json['price'] as int,
      (json['rating'] as num?)?.toDouble(),
      json['name'] as String,
      json['image'] as String,
      json['rates_count'] as int,
      json['discount_percentage'] as int?,
      json['is_available'] as bool,
      json['remaining_available_meal_count'] as int,
    );

Map<String, dynamic> _$ChefMealModelToJson(ChefMealModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'rating': instance.rating,
      'name': instance.name,
      'image': instance.image,
      'rates_count': instance.ratesCount,
      'discount_percentage': instance.discountPercentage,
      'is_available': instance.isAvailable,
      'remaining_available_meal_count': instance.remainingAvailableMealsCount,
    };
