import 'package:beitouti_users/features/chef_menu/domain/entities/chef_meal.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chef_meal_model.g.dart';

@JsonSerializable()
class ChefMealModel extends ChefMeal {
  static const String className = 'ChefMealModel';

  @JsonKey(name: 'rates_count')
  final int ratesCount;

  @JsonKey(name: 'discount_percentage')
  final int? discountPercentage;

  @JsonKey(name: 'price_after_discount')
  final int? priceAfterDiscount;

  @JsonKey(name: 'is_available')
  final bool isAvailable;

  @JsonKey(name: "remaining_available_meal_count")
  final int remainingAvailableMealsCount;

  factory ChefMealModel.fromJson(Map<String, dynamic> json) =>
      _$ChefMealModelFromJson(json);

  ChefMealModel(
      int id,
      int price,
      double? rating,
      String name,
      String image,
      this.priceAfterDiscount,
      this.ratesCount,
      this.discountPercentage,
      this.isAvailable,
      this.remainingAvailableMealsCount)
      : super(
          id,
          price,
          priceAfterDiscount,
          rating,
          ratesCount,
          discountPercentage,
          name,
          image,
          isAvailable,
          remainingAvailableMealsCount,
        );
}
