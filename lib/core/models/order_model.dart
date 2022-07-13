// import 'package:json_annotation/json_annotation.dart';
//
// part 'cart_item_model.g.dart';
//
// @JsonSerializable()
// class CartItemModel {
//   final int id;
//   final int chefId;
//   final int deliveryCost;
//   final int maxMealsPerDay;
//   final int maxChefMealsPerDay;
//   final String notes;
//   final String mealName;
//   final String chefName;
//   final String mealImage;
//   final String deliveryStartsAt;
//   int mealQuantity;
//   final int mealCost;
//
//
//   CartItemModel({
//     required this.id,
//     required this.chefId,
//     required this.mealName,
//     required this.chefName,
//     required this.mealImage,
//     required this.mealQuantity,
//     required this.deliveryCost,
//     required this.mealCost,
//     required this.maxMealsPerDay,
//     required this.maxChefMealsPerDay,
//     required this.deliveryStartsAt,
//     required this.notes,
//   });
//
//   factory CartItemModel.fromJson(Map<String, dynamic> json) =>
//       _$CartItemModelFromJson(json);
//
//   Map<String, dynamic> toJson({CartItemModel? instance}) =>
//       _$CartItemModelToJson(
//         instance ?? this,
//       );
// }
