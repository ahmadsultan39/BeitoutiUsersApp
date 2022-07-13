import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

class CurrentSubscriptionOrder extends Equatable {
  final int id;

  @JsonKey(name: 'meal_name')
  final String mealName;

  @JsonKey(name: 'meal_image')
  final String mealImage;

  @JsonKey(name: 'selected_delivery_time')
  final String selectedDeliveryTime;

  @JsonKey(name: 'can_be_canceled')
  final bool canBeCanceled;

  const CurrentSubscriptionOrder({
    required this.id,
    required this.mealName,
    required this.mealImage,
    required this.selectedDeliveryTime,
    required this.canBeCanceled,
  });

  @override
  List<Object?> get props => [
        id,
        mealImage,
        mealName,
        selectedDeliveryTime,
        canBeCanceled,
      ];
}
