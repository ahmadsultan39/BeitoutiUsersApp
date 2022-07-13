import 'package:equatable/equatable.dart';

class SubscriptionMeal extends Equatable {
  final int mealId;
  final String name;
  final int price;
  final String image;
  final double? rating;
  final int ratesCount;
  final int daysNumber;
  final String mealDate;

  const SubscriptionMeal({
    required this.mealId,
    required this.name,
    required this.price,
    required this.image,
    required this.rating,
    required this.ratesCount,
    required this.daysNumber,
    required this.mealDate,
  });

  @override
  List<Object?> get props => [
        mealId,
        name,
        price,
        image,
        rating,
        ratesCount,
    daysNumber,
        mealDate,
      ];
}
