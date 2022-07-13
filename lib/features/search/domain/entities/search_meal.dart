import 'package:beitouti_users/features/search/domain/entities/search_chef.dart';
import 'package:equatable/equatable.dart';

class SearchMeal extends Equatable {
  final int id;
  final int? priceWithDiscount;
  final int priceWithoutDiscount;
  final double? rating;
  final int ratesCount;
  final String name;
  final String image;
  final bool isAvailable;
  final SearchChef chef;

  const SearchMeal({
    required this.id,
    required this.image,
    required this.name,
    this.priceWithDiscount,
    required this.priceWithoutDiscount,
    required this.isAvailable,
    required this.rating,
    required this.ratesCount,
    required this.chef,
  });



  @override
  List<Object?> get props => [];

}