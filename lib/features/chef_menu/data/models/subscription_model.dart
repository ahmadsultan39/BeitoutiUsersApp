import 'package:beitouti_users/features/chef_menu/domain/entities/subscription.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_model.g.dart';

@JsonSerializable()
class SubscriptionModel extends Subscription {
  static const String className = 'SubscriptionModel';

  factory SubscriptionModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionModelFromJson(json);

  @JsonKey(name: "chef_id")
  final int chefId;
  @JsonKey(name: "days_number")
  final int daysNumber;
  @JsonKey(name: "meal_delivery_time")
  final String mealDeliveryTime;
  @JsonKey(name: "is_available")
  final bool isAvailable;
  @JsonKey(name: "starts_at")
  final String startDate;
  @JsonKey(name: "total_cost")
  final int totalCost;
  @JsonKey(name: "rating_count")
  final int ratingCount;
  @JsonKey(name: "available_subscriptions_count")
  final int availableSubscriptionsCount;
  @JsonKey(name: "has_subscribed")
  final bool hasSubscribed;

  SubscriptionModel(
      int id,
      this.chefId,
      String name,
      this.daysNumber,
      this.mealDeliveryTime,
      this.isAvailable,
      this.startDate,
      this.totalCost,
      double? rating,
      this.ratingCount,
      this.availableSubscriptionsCount,
      this.hasSubscribed)
      : super(
            id,
            chefId,
            name,
            daysNumber,
            mealDeliveryTime,
            isAvailable,
            startDate,
            totalCost,
            rating,
            ratingCount,
            availableSubscriptionsCount,
            hasSubscribed);
}
