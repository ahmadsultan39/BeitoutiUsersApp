import 'package:beitouti_users/features/subscription/domain/entities/subscription_chef.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

class CurrentSubscription extends Equatable {
  final int id;
  final String name;
  final SubscriptionChef chef;

  @JsonKey(name: 'days_number')
  final int daysNumber;

  @JsonKey(name: 'meal_delivery_time')
  final String mealDeliveryTime;

  @JsonKey(name: 'starts_at')
  final String startsAt;

  @JsonKey(name: 'ends_at')
  final String endsAt;

  const CurrentSubscription({
    required this.id,
    required this.name,
    required this.daysNumber,
    required this.mealDeliveryTime,
    required this.startsAt,
    required this.endsAt,
    required this.chef,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        chef,
        daysNumber,
        mealDeliveryTime,
        startsAt,
        endsAt,
      ];
}
