// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_meal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartMealModel _$CartMealModelFromJson(Map<String, dynamic> json) =>
    CartMealModel(
      id: json['id'] as int,
      quantity: json['quantity'] as int,
      notes: json['notes'] as String,
    );

Map<String, dynamic> _$CartMealModelToJson(CartMealModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'notes': instance.notes,
    };
