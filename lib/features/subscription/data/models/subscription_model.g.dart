// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionModel _$SubscriptionModelFromJson(Map<String, dynamic> json) =>
    SubscriptionModel(
      id: json['id'] as int,
      name: json['name'] as String,
      rating: (json['rating'] as num?)?.toDouble(),
      daysNumber: json['days_number'] as int,
      chef:
          SubscriptionChefModel.fromJson(json['chef'] as Map<String, dynamic>),
      hasSubscribed: json['has_subscribed'] as bool,
      availableSubscriptionsCount: json['available_subscriptions_count'] as int,
      ratingCount: json['rating_count'] as int,
      totalCost: json['total_cost'] as int,
      mealsCost: json['meals_cost'] as int,
      maxSubscribers: json['max_subscribers'] as int,
      mealDeliveryTime: json['meal_delivery_time'] as String,
      chefId: json['chef_id'] as int,
      startsAt: json['starts_at'] as String,
    );

Map<String, dynamic> _$SubscriptionModelToJson(SubscriptionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rating': instance.rating,
      'chef_id': instance.chefId,
      'days_number': instance.daysNumber,
      'meal_delivery_time': instance.mealDeliveryTime,
      'starts_at': instance.startsAt,
      'max_subscribers': instance.maxSubscribers,
      'meals_cost': instance.mealsCost,
      'total_cost': instance.totalCost,
      'rating_count': instance.ratingCount,
      'available_subscriptions_count': instance.availableSubscriptionsCount,
      'has_subscribed': instance.hasSubscribed,
      'chef': instance.chef,
    };
