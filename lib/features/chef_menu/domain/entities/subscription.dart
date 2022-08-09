import 'package:equatable/equatable.dart';

class Subscription extends Equatable {
  final int id;
  final int chefId;
  final String name;
  final int daysNumber;
  final String mealDeliveryTime;
  final bool isAvailable;
  final String startDate;
  final double totalCost;
  final double? rating;
  final int ratingCount;
  final int availableSubscriptionsCount;
  final bool hasSubscribed;

  const Subscription(
      this.id,
      this.chefId,
      this.name,
      this.daysNumber,
      this.mealDeliveryTime,
      this.isAvailable,
      this.startDate,
      this.totalCost,
      this.rating,
      this.ratingCount,
      this.availableSubscriptionsCount,
      this.hasSubscribed);

  @override
  List<Object?> get props => [
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
        hasSubscribed
      ];
}
