// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_subscription_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchSubscriptionModel _$SearchSubscriptionModelFromJson(
        Map<String, dynamic> json) =>
    SearchSubscriptionModel(
      json['id'] as int,
      json['name'] as String,
      (json['meals'] as List<dynamic>).map((e) => e as String).toList(),
      json['days_number'] as int,
      json['starts_at'] as String,
      (json['total_cost'] as num).toDouble(),
      (json['rate'] as num?)?.toDouble(),
      json['rate_count'] as int?,
      SearchChefModel.fromJson(json['chef'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchSubscriptionModelToJson(
        SearchSubscriptionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'meals': instance.meals,
      'days_number': instance.daysNumber,
      'starts_at': instance.startsAt,
      'total_cost': instance.totalCost,
      'rate': instance.rating,
      'rate_count': instance.ratesCount,
      'chef': instance.chef,
    };
