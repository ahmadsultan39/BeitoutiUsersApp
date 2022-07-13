// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MealModel _$MealModelFromJson(Map<String, dynamic> json) => MealModel(
      id: json['id'] as int,
      price: json['price'] as int,
      rating: (json['rating'] as num?)?.toDouble(),
      name: json['name'] as String,
      image: json['image'] as String,
      ingredients: json['ingredients'] as String,
      approved: json['approved'] as bool,
      chef: MealChefModel.fromJson(json['chef'] as Map<String, dynamic>),
      priceAfterDiscount: json['price_after_discount'] as int?,
      isSaved: json['is_saved'] as bool,
      category:
          MealCategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      categoryId: json['category_id'] as int,
      expectedPreparationTime: json['expected_preparation_time'] as int,
      deliveryFee: (json['delivery_fee'] as num).toDouble(),
      remainingAvailableMealCount:
          json['remaining_available_meal_count'] as int,
      discountPercentage: json['discount_percentage'] as int?,
      maxMealsPerDay: json['max_meals_per_day'] as int,
      ratesCount: json['rates_count'] as int,
      isAvailable: json['is_available'] as bool,
    );

Map<String, dynamic> _$MealModelToJson(MealModel instance) => <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'rating': instance.rating,
      'name': instance.name,
      'image': instance.image,
      'ingredients': instance.ingredients,
      'approved': instance.approved,
      'category_id': instance.categoryId,
      'rates_count': instance.ratesCount,
      'max_meals_per_day': instance.maxMealsPerDay,
      'discount_percentage': instance.discountPercentage,
      'price_after_discount': instance.priceAfterDiscount,
      'remaining_available_meal_count': instance.remainingAvailableMealCount,
      'delivery_fee': instance.deliveryFee,
      'expected_preparation_time': instance.expectedPreparationTime,
      'is_available': instance.isAvailable,
      'is_saved': instance.isSaved,
      'chef': instance.chef,
      'category': instance.category,
    };
