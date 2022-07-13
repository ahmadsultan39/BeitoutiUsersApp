// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_meal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderMealModel _$OrderMealModelFromJson(Map<String, dynamic> json) =>
    OrderMealModel(
      id: json['id'] as int,
      name: json['name'] as String,
      image: json['image'] as String,
      quantity: json['quantity'] as int,
      price: json['price'],
      userRate: json['user_rate'] as int?,
    );

Map<String, dynamic> _$OrderMealModelToJson(OrderMealModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'name': instance.name,
      'image': instance.image,
      'price': instance.price,
      'user_rate': instance.userRate,
    };
