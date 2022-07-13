import 'package:beitouti_users/features/subscription/domain/entities/subscription_chef.dart';
import 'package:equatable/equatable.dart';

class Subscription extends Equatable {
  final int id;
  final int chefId;
  final String name;
  final int daysNumber;
  final String mealDeliveryTime;
  final String startsAt;
  final int maxSubscribers;
  final int mealsCost;
  final int totalCost;
  final double? rating;
  final int ratingCount;
  final int availableSubscriptionsCount;
  final bool hasSubscribed;
  final SubscriptionChef chef;

  const Subscription({
    required this.id,
    required this.chefId,
    required this.name,
    required this.daysNumber,
    required this.mealDeliveryTime,
    required this.startsAt,
    required this.maxSubscribers,
    required this.mealsCost,
    required this.totalCost,
    required this.rating,
    required this.ratingCount,
    required this.availableSubscriptionsCount,
    required this.hasSubscribed,
    required this.chef,
  });

  @override
  List<Object?> get props => [
        id,
        chefId,
        name,
        daysNumber,
        mealDeliveryTime,
        startsAt,
        maxSubscribers,
        mealsCost,
        totalCost,
        rating,
        ratingCount,
        availableSubscriptionsCount,
        hasSubscribed,
        chef,
      ];
}
