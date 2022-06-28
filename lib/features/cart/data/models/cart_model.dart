import 'package:beitouti_users/features/cart/domain/entities/cart.dart';
import 'package:json_annotation/json_annotation.dart';
import 'cart_meal_model.dart';

part 'cart_model.g.dart';

@JsonSerializable()
class CartModel extends Cart {
  static const String className = 'CartModel';

  final List<CartMealModel> meals;

  const CartModel({
    required this.meals,
    required int chefId,
    required String selectedDeliveryTime,
    required int mealsCount,
    required String notes,
    required int totalCost,
    required int mealsCost,
  }) : super(
          meals: meals,
          chefId: chefId,
          selectedDeliveryTime: selectedDeliveryTime,
          mealsCount: mealsCount,
          notes: notes,
          totalCost: totalCost,
          mealsCost: mealsCost,
        );

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);

  Map<String, dynamic> toJson() => _$CartModelToJson(this);
}
