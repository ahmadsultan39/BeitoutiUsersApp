// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartModel _$CartModelFromJson(Map<String, dynamic> json) => CartModel(
      meals: (json['meals'] as List<dynamic>)
          .map((e) => CartMealModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      chefId: json['chef_id'] as int,
      selectedDeliveryTime: json['selected_delivery_time'] as String,
      mealsCount: json['meals_count'] as int,
      notes: json['notes'] as String,
      totalCost: json['total_cost'] as int,
      mealsCost: json['meals_cost'] as int,
    );

Map<String, dynamic> _$CartModelToJson(CartModel instance) => <String, dynamic>{
      'meals_count': instance.mealsCount,
      'total_cost': instance.totalCost,
      'meals_cost': instance.mealsCost,
      'chef_id': instance.chefId,
      'selected_delivery_time': instance.selectedDeliveryTime,
      'notes': instance.notes,
      'meals': instance.meals,
    };
