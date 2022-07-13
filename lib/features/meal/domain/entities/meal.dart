import 'package:equatable/equatable.dart';
import 'meal_category.dart';
import 'meal_chef.dart';

class Meal extends Equatable {
  final int id;
  final int price;
  final int categoryId;
  final int ratesCount;
  final int maxMealsPerDay;
  final int? discountPercentage;
  final int remainingAvailableMealCount;
  final double? rating;
  final double deliveryFee;
  final int expectedPreparationTime;
  final String name;
  final String image;
  final String ingredients;
  final bool approved;
  final bool isAvailable;
  final bool isSaved;
  final MealChef chef;
  final MealCategory category;

  const Meal({
    required this.id,
    required this.price,
    required this.isSaved,
    required this.categoryId,
    required this.ratesCount,
    required this.maxMealsPerDay,
    required this.discountPercentage,
    required this.remainingAvailableMealCount,
    required this.rating,
    required this.deliveryFee,
    required this.expectedPreparationTime,
    required this.name,
    required this.image,
    required this.ingredients,
    required this.approved,
    required this.isAvailable,
    required this.chef,
    required this.category,
  });

  @override
  List<Object?> get props => [
        id,
        price,
        categoryId,
        ratesCount,
        maxMealsPerDay,
        discountPercentage,
        remainingAvailableMealCount,
        rating,
        deliveryFee,
        expectedPreparationTime,
        name,
        image,
        ingredients,
        approved,
        isAvailable,
        chef,
        category,
        isSaved,
      ];
}
