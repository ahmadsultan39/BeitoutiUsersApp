import 'package:beitouti_users/features/cart/domain/entities/cart_meal.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cart_meal_model.g.dart';

@JsonSerializable()
class CartMealModel extends CartMeal {
  static const String className = 'CartMealModel';

  const CartMealModel({
    required int id,
    required int quantity,
    required String notes,
  }) : super(
          id: id,
          quantity: quantity,
          notes: notes,
        );

  factory CartMealModel.fromJson(Map<String, dynamic> json) =>
      _$CartMealModelFromJson(json);

  Map<String, dynamic> toJson() => _$CartMealModelToJson(this);
}
