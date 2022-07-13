import 'package:beitouti_users/features/current_subscriptions/domain/entities/current_subscription_order.dart';
import 'package:json_annotation/json_annotation.dart';

part 'current_subscription_order.g.dart';

@JsonSerializable()
class CurrentSubscriptionOrderModel extends CurrentSubscriptionOrder {
  static const String className = 'CurrentSubscriptionOrderModel';

  const CurrentSubscriptionOrderModel({
    required int id,
    required String mealName,
    required String mealImage,
    required String selectedDeliveryTime,
    required bool canBeCanceled,
  }) : super(
          id: id,
          mealName: mealName,
          mealImage: mealImage,
          selectedDeliveryTime: selectedDeliveryTime,
          canBeCanceled: canBeCanceled,
        );

  factory CurrentSubscriptionOrderModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentSubscriptionOrderModelFromJson(json);

}
