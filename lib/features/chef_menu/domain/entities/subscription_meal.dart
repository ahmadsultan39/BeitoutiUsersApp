import 'package:equatable/equatable.dart';

class SubscriptionMeal extends Equatable {
  final int id;
  final String name;
  final int price;
  final String image;
  final double? rating;
  final int ratingCount;
  final int day;
  final String date;

  const SubscriptionMeal(
    this.id,
    this.name,
    this.price,
    this.image,
    this.rating,
    this.ratingCount,
    this.day,
    this.date,
  );

  @override
  List<Object?> get props => [
        id,
        name,
        price,
        image,
        rating,
        ratingCount,
        day,
        date,
      ];
}
