// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_subscription_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentSubscriptionOrderModel _$CurrentSubscriptionOrderModelFromJson(
        Map<String, dynamic> json) =>
    CurrentSubscriptionOrderModel(
      id: json['id'] as int,
      mealName: json['meal_name'] as String,
      mealImage: json['meal_image'] as String,
      selectedDeliveryTime: json['selected_delivery_time'] as String,
      canBeCanceled: json['can_be_canceled'] as bool,
    );

Map<String, dynamic> _$CurrentSubscriptionOrderModelToJson(
        CurrentSubscriptionOrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meal_name': instance.mealName,
      'meal_image': instance.mealImage,
      'selected_delivery_time': instance.selectedDeliveryTime,
      'can_be_canceled': instance.canBeCanceled,
    };
