import 'package:beitouti_users/features/meal/data/models/meal_category_model.dart';
import 'package:beitouti_users/features/meal/data/models/meal_chef_model.dart';
import 'package:beitouti_users/features/meal/domain/entities/meal.dart';
import 'package:beitouti_users/features/meal/domain/entities/meal_category.dart';
import 'package:beitouti_users/features/meal/domain/entities/meal_chef.dart';
import 'package:json_annotation/json_annotation.dart';

part 'meal_model.g.dart';

@JsonSerializable()
class MealModel extends Meal {
  static const String className = 'MealModel';

  @JsonKey(name: 'category_id')
  final int categoryId;

  @JsonKey(name: 'rates_count')
  final int ratesCount;

  @JsonKey(name: 'max_meals_per_day')
  final int maxMealsPerDay;

  @JsonKey(name: 'discount_percentage')
  final int? discountPercentage;

  @JsonKey(name: 'price_after_discount')
  final int? priceAfterDiscount;

  @JsonKey(name: 'remaining_available_meal_count')
  final int remainingAvailableMealCount;

  @JsonKey(name: 'delivery_fee')
  final double deliveryFee;

  @JsonKey(name: 'expected_preparation_time')
  final int expectedPreparationTime;

  @JsonKey(name: 'is_available')
  final bool isAvailable;

  @JsonKey(name: 'is_saved')
  final bool isSaved;

  final MealChefModel chef;

  final MealCategoryModel category;

  const MealModel({
    required int id,
    required int price,
    required double? rating,
    required String name,
    required String image,
    required String ingredients,
    required bool approved,
    required this.chef,
    required this.priceAfterDiscount,
    required this.isSaved,
    required this.category,
    required this.categoryId,
    required this.expectedPreparationTime,
    required this.deliveryFee,
    required this.remainingAvailableMealCount,
    required this.discountPercentage,
    required this.maxMealsPerDay,
    required this.ratesCount,
    required this.isAvailable,
  }) : super(
          priceAfterDiscount: priceAfterDiscount,
          id: id,
          price: price,
          categoryId: categoryId,
          ratesCount: ratesCount,
          maxMealsPerDay: maxMealsPerDay,
          discountPercentage: discountPercentage,
          remainingAvailableMealCount: remainingAvailableMealCount,
          rating: rating,
          deliveryFee: deliveryFee,
          expectedPreparationTime: expectedPreparationTime,
          name: name,
          image: image,
          ingredients: ingredients,
          approved: approved,
          isAvailable: isAvailable,
          chef: chef,
          category: category,
          isSaved: isSaved,
        );

  factory MealModel.fromJson(Map<String, dynamic> json) =>
      _$MealModelFromJson(json);
}
