import 'package:equatable/equatable.dart';

class ChefInfo extends Equatable {
  final String name;
  final String deliveryStartTime;
  final String deliveryEndTime;
  final bool isAvailable;
  final String location;
  final double rating;
  final int ratesCount;
  final int ordersCount;
  final int maxMealsPerDay;
  final int remainingAvailableMealsCount;

  const ChefInfo(
      this.name,
      this.deliveryStartTime,
      this.deliveryEndTime,
      this.isAvailable,
      this.location,
      this.rating,
      this.ratesCount,
      this.ordersCount,
      this.maxMealsPerDay,
      this.remainingAvailableMealsCount);

  @override
  List<Object?> get props => [
        name,
        deliveryStartTime,
        deliveryEndTime,
        isAvailable,
        location,
        rating,
        ratesCount,
        ordersCount,
        maxMealsPerDay,
        remainingAvailableMealsCount,
      ];
}
