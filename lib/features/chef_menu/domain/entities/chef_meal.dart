import 'package:equatable/equatable.dart';

class ChefMeal extends Equatable {
  final int id;
  final int price;
  final int? priceAfterDiscount;
  final double? rating;
  final int ratesCount;
  final int? discountPercentage;
  final String name;
  final String image;
  final bool isAvailable;
  final int remainingAvailableMealsCount;

  const ChefMeal(
      this.id,
      this.price,
      this.priceAfterDiscount,
      this.rating,
      this.ratesCount,
      this.discountPercentage,
      this.name,
      this.image,
      this.isAvailable,
      this.remainingAvailableMealsCount);

  @override
  // TODO: implement props
  List<Object?> get props => [];
}
