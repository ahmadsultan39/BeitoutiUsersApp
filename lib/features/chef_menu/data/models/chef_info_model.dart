import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/chef_info.dart';

part 'chef_info_model.g.dart';

@JsonSerializable()
class ChefInfoModel extends ChefInfo {
  static const String className = 'ChefInfoModel';

  @JsonKey(name: "delivery_starts_at")
  final String deliveryStartTime;
  @JsonKey(name: "delivery_ends_at")
  final String deliveryEndTime;
  @JsonKey(name: "is_available")
  final bool isAvailable;
  @JsonKey(name: "location_name")
  final String location;
  @JsonKey(name: "ratings")
  final double? rating;
  @JsonKey(name: "rates_count")
  final int ratesCount;
  @JsonKey(name: "orders_count")
  final int ordersCount;
  @JsonKey(name: "max_meals_per_day")
  final int maxMealsPerDay;
  @JsonKey(name: "remaining_available_chef_meals_count")
  final int remainingAvailableMealsCount;

  const ChefInfoModel(
      String name,
      this.deliveryStartTime,
      this.deliveryEndTime,
      this.isAvailable,
      this.location,
      this.rating,
      this.ratesCount,
      this.ordersCount,
      this.maxMealsPerDay,
      this.remainingAvailableMealsCount)
      : super(
            name,
            deliveryStartTime,
            deliveryEndTime,
            isAvailable,
            location,
            rating,
            ratesCount,
            ordersCount,
            maxMealsPerDay,
            remainingAvailableMealsCount);

  factory ChefInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ChefInfoModelFromJson(json);
}
