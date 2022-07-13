import 'package:beitouti_users/features/subscription/domain/entities/subscription_meal.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_meal_model.g.dart';

@JsonSerializable()
class SubscriptionsMealModel extends SubscriptionMeal {
  static const String className = 'SubscriptionsMealModel';
  @JsonKey(name: 'meal_id')
  final int mealId;

  @JsonKey(name: 'rates_count')
  final int ratesCount;

  @JsonKey(name: 'day_number')
  final int daysNumber;

  @JsonKey(name: 'meal_date')
  final String mealDate;

  const SubscriptionsMealModel({
    required String name,
    required int price,
    required String image,
    required double? rating,
    required this.mealDate,
    required this.ratesCount,
    required this.mealId,
    required this.daysNumber,
  }) : super(
          mealId: mealId,
          name: name,
          price: price,
          image: image,
          rating: rating,
          ratesCount: ratesCount,
          daysNumber: daysNumber,
          mealDate: mealDate,
        );

  factory SubscriptionsMealModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionsMealModelFromJson(json);
}
