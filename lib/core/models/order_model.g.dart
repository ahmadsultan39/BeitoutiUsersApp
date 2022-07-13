// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => OrderModel(
      id: json['id'] as int,
      notes: json['notes'] as String?,
      status: $enumDecode(_$OrderStatusEnumMap, json['status']),
      subscriptionId: json['subscription_id'] as int?,
      canBeCanceled: json['can_be_canceled'] as bool?,
      canBeEvaluated: json['can_be_evaluated'] as bool?,
      chefName: json['chef_name'] as String,
      chefImage: json['chef_image'] as String?,
      selectedDeliveryTime: json['selected_delivery_time'] as String,
      createdAt: json['created_at'] as String,
      totalCost: json['total_cost'],
      deliveryFee: json['delivery_fee'],
      meals: (json['meals'] as List<dynamic>?)
          ?.map((e) => OrderMealModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderModelToJson(OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'notes': instance.notes,
      'status': _$OrderStatusEnumMap[instance.status]!,
      'subscription_id': instance.subscriptionId,
      'can_be_canceled': instance.canBeCanceled,
      'can_be_evaluated': instance.canBeEvaluated,
      'chef_name': instance.chefName,
      'chef_image': instance.chefImage,
      'selected_delivery_time': instance.selectedDeliveryTime,
      'created_at': instance.createdAt,
      'total_cost': instance.totalCost,
      'delivery_fee': instance.deliveryFee,
      'meals': instance.meals,
    };

const _$OrderStatusEnumMap = {
  OrderStatus.pending: 'pending',
  OrderStatus.approved: 'approved',
  OrderStatus.notApproved: 'notApproved',
  OrderStatus.prepared: 'prepared',
  OrderStatus.failedAssigning: 'failedAssigning',
  OrderStatus.picked: 'picked',
  OrderStatus.delivered: 'delivered',
  OrderStatus.notDelivered: 'notDelivered',
  OrderStatus.canceled: 'canceled',
};
