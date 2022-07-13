import 'package:equatable/equatable.dart';
import 'home_chef.dart';

class HomeMeal extends Equatable {
  final int id;
  final int price;
  final int? priceAfterDiscount;
  final double? rating;
  final int ratesCount;
  final int? discountPercentage;
  final String name;
  final String image;
  final bool isAvailable;
  final HomeChef chef;

  const HomeMeal({
    required this.id,
    required this.priceAfterDiscount,
    required this.image,
    required this.name,
    required this.price,
    required this.isAvailable,
    required this.discountPercentage,
    required this.rating,
    required this.ratesCount,
    required this.chef,
  });

  @override
  List<Object?> get props => [];
}
