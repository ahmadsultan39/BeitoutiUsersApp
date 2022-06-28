// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartItemModel _$CartItemModelFromJson(Map<String, dynamic> json) =>
    CartItemModel(
      id: json['id'] as int,
      chefId: json['chefId'] as int,
      mealName: json['mealName'] as String,
      chefName: json['chefName'] as String,
      mealImage: json['mealImage'] as String,
      mealQuantity: json['mealQuantity'] as int,
      deliveryCost: json['deliveryCost'] as int,
      mealCost: json['mealCost'] as int,
      maxMealsPerDay: json['maxMealsPerDay'] as int,
      maxChefMealsPerDay: json['maxChefMealsPerDay'] as int,
      deliveryStartsAt: json['deliveryStartsAt'] as String,
      notes: json['notes'] as String,
    );

Map<String, dynamic> _$CartItemModelToJson(CartItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chefId': instance.chefId,
      'mealQuantity': instance.mealQuantity,
      'deliveryCost': instance.deliveryCost,
      'mealCost': instance.mealCost,
      'maxMealsPerDay': instance.maxMealsPerDay,
      'maxChefMealsPerDay': instance.maxChefMealsPerDay,
      'notes': instance.notes,
      'mealName': instance.mealName,
      'chefName': instance.chefName,
      'mealImage': instance.mealImage,
      'deliveryStartsAt': instance.deliveryStartsAt,
    };
