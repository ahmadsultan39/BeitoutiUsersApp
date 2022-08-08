import 'package:beitouti_users/core/entities/order.dart';
import 'package:beitouti_users/core/util/enums.dart';
import 'package:json_annotation/json_annotation.dart';
import 'order_meal_model.dart';

part 'order_model.g.dart';

@JsonSerializable()
class OrderModel extends OrderEntity {
  static const String className = 'OrderModel';
  static const String paginateName = 'PaginateResponseModel<OrderModel>';

  final List<OrderMealModel>? meals;

  OrderModel({
    required int id,
    required String? notes,
    required OrderStatus status,
    required int? subscriptionId,
    required bool? canBeCanceled,
    required bool? canBeEvaluated,
    required String chefName,
    required String? chefImage,
    required String selectedDeliveryTime,
    required String createdAt,
    required totalCost,
    required deliveryFee,
    required this.meals,
  }) : super(
          id: id,
          notes: notes,
          status: status,
          subscriptionId: subscriptionId,
          canBeCanceled: canBeCanceled,
          canBeEvaluated: canBeEvaluated,
          chefName: chefName,
          chefImage: chefImage,
          selectedDeliveryTime: selectedDeliveryTime,
          createdAt: createdAt,
          totalCost: totalCost,
          deliveryFee: deliveryFee,
          meals: meals,
        );

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);

  Map<String, dynamic> toJson({OrderModel? instance}) =>
      _$OrderModelToJson(instance ?? this);
}

