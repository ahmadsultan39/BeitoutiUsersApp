import 'package:beitouti_users/features/chef_menu/domain/entities/subscription_meal.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_meal_model.g.dart';

@JsonSerializable()
class SubscriptionMealModel extends SubscriptionMeal {
  static const String className = 'SubscriptionMealModel';

  factory SubscriptionMealModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionMealModelFromJson(json);

  @JsonKey(name: "meal_id")
  final int id;
  @JsonKey(name: "rates_count")
  final int ratingCount;
  @JsonKey(name: "day_number")
  final int day;
  @JsonKey(name: "meal_date")
  final String date;

  const SubscriptionMealModel(
    this.id,
    String name,
    int price,
    String image,
    double? rating,
    this.ratingCount,
    this.day,
    this.date,
  ) : super(
          id,
          name,
          price,
          image,
          rating,
          ratingCount,
          day,
          date,
        );
}
