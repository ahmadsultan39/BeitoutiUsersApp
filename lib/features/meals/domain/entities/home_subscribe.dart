import 'package:beitouti_users/features/meals/domain/entities/home_chef.dart';
import 'package:equatable/equatable.dart';

class HomeSubscribe extends Equatable {
  final int id;
  final int chefId;
  final int totalCost;
  final int daysNumber;
  final int mealsCount;
  final String name;
  final String startsAt;
  final bool isAvailable;
  final HomeChef chef;

  const HomeSubscribe({
    required this.id,
    required this.chefId,
    required this.name,
    required this.daysNumber,
    required this.isAvailable,
    required this.startsAt,
    required this.totalCost,
    required this.mealsCount,
    required this.chef,
  });

  @override
  List<Object?> get props => [];
}
