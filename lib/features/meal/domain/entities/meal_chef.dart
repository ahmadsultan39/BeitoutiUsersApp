import 'package:equatable/equatable.dart';

class MealChef extends Equatable {
  final int id;
  final int remainingAvailableChefMealsCount;
  final String name;
  final String location;
  final String deliveryStartsAt;
  final String deliveryEndsAt;

  const MealChef({
    required this.id,
    required this.name,
    required this.remainingAvailableChefMealsCount,
    required this.location,
    required this.deliveryStartsAt,
    required this.deliveryEndsAt,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        remainingAvailableChefMealsCount,
        location,
        deliveryEndsAt,
        deliveryStartsAt,
      ];
}
