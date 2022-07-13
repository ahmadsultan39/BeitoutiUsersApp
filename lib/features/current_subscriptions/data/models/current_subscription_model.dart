import 'package:beitouti_users/features/current_subscriptions/domain/entities/current_subscription.dart';
import 'package:beitouti_users/features/subscription/data/models/subscription_chef_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'current_subscription_model.g.dart';

@JsonSerializable()
class CurrentSubscriptionModel extends CurrentSubscription {
  static const String className = 'CurrentSubscriptionModel';

  final SubscriptionChefModel chef;

  const CurrentSubscriptionModel({
    required int id,
    required String name,
    required int daysNumber,
    required String mealDeliveryTime,
    required String startsAt,
    required String endsAt,
    required this.chef,
  }) : super(
          id: id,
          name: name,
          daysNumber: daysNumber,
          mealDeliveryTime: mealDeliveryTime,
          startsAt: startsAt,
          endsAt: endsAt,
          chef: chef,
        );

  factory CurrentSubscriptionModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentSubscriptionModelFromJson(json);
}
