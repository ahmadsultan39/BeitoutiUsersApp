import 'package:beitouti_users/core/models/cart_item_model.dart';
import 'package:beitouti_users/features/cart/domain/entities/cart_meal.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

class Cart extends Equatable {
  @JsonKey(name: 'meals_count')
  final int mealsCount;

  @JsonKey(name: 'total_cost')
  final int totalCost;

  @JsonKey(name: 'meals_cost')
  final int mealsCost;

  @JsonKey(name: 'chef_id')
  final int chefId;

  @JsonKey(name: 'selected_delivery_time')
  final String selectedDeliveryTime;

  final String notes;

  final List<CartMeal> meals;

  const Cart({
    required this.meals,
    required this.chefId,
    required this.selectedDeliveryTime,
    required this.mealsCount,
    required this.notes,
    required this.totalCost,
    required this.mealsCost,
  });

  @override
  List<Object?> get props => [
        mealsCost,
        meals,
        mealsCount,
        selectedDeliveryTime,
        notes,
        meals,
        chefId,
      ];
}
