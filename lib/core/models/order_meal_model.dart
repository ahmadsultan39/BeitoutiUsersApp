import 'package:beitouti_users/core/entities/order_meal.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_meal_model.g.dart';

@JsonSerializable()
class OrderMealModel extends OrderMeal {

  static const String className = 'OrderMealModel';

  const OrderMealModel({
    required int id,
    required String name,
    required String image,
    required int quantity,
    required price,
    required int? userRate,
  }) : super(
          id: id,
          name: name,
          image: image,
          quantity: quantity,
          price: price,
          userRate: userRate,
        );

  factory OrderMealModel.fromJson(Map<String, dynamic> json) =>
      _$OrderMealModelFromJson(json);

  Map<String, dynamic> toJson({OrderMealModel? instance}) =>
      _$OrderMealModelToJson(instance ?? this);
}

