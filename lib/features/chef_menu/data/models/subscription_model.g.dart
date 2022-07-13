// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionModel _$SubscriptionModelFromJson(Map<String, dynamic> json) =>
    SubscriptionModel(
      json['id'] as int,
      json['chef_id'] as int,
      json['name'] as String,
      json['days_number'] as int,
      json['meal_delivery_time'] as String,
      json['is_available'] as bool,
      json['starts_at'] as String,
      json['total_cost'] as int,
      (json['rating'] as num?)?.toDouble(),
      json['rating_count'] as int,
      json['available_subscriptions_count'] as int,
      json['has_subscribed'] as bool,
    );

Map<String, dynamic> _$SubscriptionModelToJson(SubscriptionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rating': instance.rating,
      'chef_id': instance.chefId,
      'days_number': instance.daysNumber,
      'meal_delivery_time': instance.mealDeliveryTime,
      'is_available': instance.isAvailable,
      'starts_at': instance.startDate,
      'total_cost': instance.totalCost,
      'rating_count': instance.ratingCount,
      'available_subscriptions_count': instance.availableSubscriptionsCount,
      'has_subscribed': instance.hasSubscribed,
    };
