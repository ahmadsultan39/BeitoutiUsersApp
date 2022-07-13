// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_meal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchMealModel _$SearchMealModelFromJson(Map<String, dynamic> json) =>
    SearchMealModel(
      json['is_available'] as bool,
      json['price_with_discount'] as int?,
      json['price_without_discount'] as int,
      json['rates_count'] as int,
      SearchChefModel.fromJson(json['chef'] as Map<String, dynamic>),
      id: json['id'] as int,
      image: json['image'] as String,
      name: json['name'] as String,
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SearchMealModelToJson(SearchMealModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rating': instance.rating,
      'name': instance.name,
      'image': instance.image,
      'is_available': instance.isAvailable,
      'price_with_discount': instance.priceWithDiscount,
      'price_without_discount': instance.priceWithoutDiscount,
      'rates_count': instance.ratesCount,
      'chef': instance.chef,
    };
