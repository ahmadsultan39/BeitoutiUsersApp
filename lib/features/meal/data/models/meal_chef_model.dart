import 'package:beitouti_users/features/meal/domain/entities/meal_chef.dart';
import 'package:json_annotation/json_annotation.dart';

part 'meal_chef_model.g.dart';

@JsonSerializable()
class MealChefModel extends MealChef {
  @JsonKey(name: "remaining_available_chef_meals_count")
  final int remainingAvailableChefMealsCount;

  @JsonKey(name: "delivery_starts_at")
  final String deliveryStartsAt;

  @JsonKey(name: "delivery_ends_at")
  final String deliveryEndsAt;

  const MealChefModel({
    required int id,
    required String name,
    required String location,
    required this.deliveryStartsAt,
    required this.remainingAvailableChefMealsCount,
    required this.deliveryEndsAt,
  }) : super(
          id: id,
          name: name,
          remainingAvailableChefMealsCount: remainingAvailableChefMealsCount,
          location: location,
          deliveryStartsAt: deliveryStartsAt,
          deliveryEndsAt: deliveryEndsAt,
        );

  factory MealChefModel.fromJson(Map<String, dynamic> json) =>
      _$MealChefModelFromJson(json);
}
