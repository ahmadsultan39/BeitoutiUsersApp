import 'package:beitouti_users/features/subscription/data/models/subscription_chef_model.dart';
import 'package:beitouti_users/features/subscription/domain/entities/subscription.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_model.g.dart';

@JsonSerializable()
class SubscriptionModel extends Subscription {
   static const String className = 'SubscriptionModel';

  @JsonKey(name: 'chef_id')
  final int chefId;

  @JsonKey(name: 'days_number')
  final int daysNumber;

  @JsonKey(name: 'meal_delivery_time')
  final String mealDeliveryTime;

  @JsonKey(name: 'starts_at')
  final String startsAt;

  @JsonKey(name: 'max_subscribers')
  final int maxSubscribers;

  @JsonKey(name: 'meals_cost')
  final int mealsCost;

  @JsonKey(name: 'total_cost')
  final double totalCost;

  @JsonKey(name: 'rating_count')
  final int ratingCount;

  @JsonKey(name: 'available_subscriptions_count')
  final int availableSubscriptionsCount;

  @JsonKey(name: 'has_subscribed')
  final bool hasSubscribed;

  final SubscriptionChefModel chef;

  const SubscriptionModel({
    required int id,
    required String name,
    required double? rating,
    required this.daysNumber,
    required this.chef,
    required this.hasSubscribed,
    required this.availableSubscriptionsCount,
    required this.ratingCount,
    required this.totalCost,
    required this.mealsCost,
    required this.maxSubscribers,
    required this.mealDeliveryTime,
    required this.chefId,
    required this.startsAt,
  }) : super(
          id: id,
          chefId: chefId,
          name: name,
          daysNumber: daysNumber,
          mealDeliveryTime: mealDeliveryTime,
          startsAt: startsAt,
          maxSubscribers: maxSubscribers,
          mealsCost: mealsCost,
          totalCost: totalCost,
          rating: rating,
          ratingCount: ratingCount,
          availableSubscriptionsCount: availableSubscriptionsCount,
          hasSubscribed: hasSubscribed,
          chef: chef,
        );

  factory SubscriptionModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionModelFromJson(json);
}
