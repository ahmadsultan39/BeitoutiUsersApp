// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_meal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeMealModel _$HomeMealModelFromJson(Map<String, dynamic> json) =>
    HomeMealModel(
      id: json['id'] as int,
      name: json['name'] as String,
      image: json['image'] as String,
      price: json['price'] as int,
      rating: (json['rating'] as num?)?.toDouble(),
      chef: HomeChefModel.fromJson(json['chef'] as Map<String, dynamic>),
      isAvailable: json['is_available'] as bool,
      discountPercentage: json['discount_percentage'] as int?,
      ratesCount: json['rates_count'] as int,
    );

Map<String, dynamic> _$HomeMealModelToJson(HomeMealModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'rating': instance.rating,
      'name': instance.name,
      'image': instance.image,
      'rates_count': instance.ratesCount,
      'discount_percentage': instance.discountPercentage,
      'is_available': instance.isAvailable,
      'chef': instance.chef,
    };
