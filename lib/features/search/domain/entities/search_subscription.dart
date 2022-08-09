import 'package:beitouti_users/features/search/domain/entities/search_chef.dart';
import 'package:equatable/equatable.dart';

class SearchSubscription extends Equatable {
  final int id;
  final String name;
  final bool isAvailable;
  final int daysNumber;
  final String startsAt;
  final double totalCost;
  final double? rating;
  final int? ratesCount;
  final List<String> meals;
  final SearchChef chef;

  const SearchSubscription(this.id, this.name,this.isAvailable, this.daysNumber, this.startsAt,
      this.totalCost, this.rating, this.ratesCount, this.meals, this.chef);

  @override
  List<Object?> get props => [];
}
