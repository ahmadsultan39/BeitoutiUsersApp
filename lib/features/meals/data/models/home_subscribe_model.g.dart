// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_subscribe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeSubscribeModel _$HomeSubscribeModelFromJson(Map<String, dynamic> json) =>
    HomeSubscribeModel(
      id: json['id'] as int,
      name: json['name'] as String,
      isAvailable: json['is_available'] as bool,
      chef: HomeChefModel.fromJson(json['chef'] as Map<String, dynamic>),
      chefId: json['chef_id'] as int,
      daysNumber: json['days_number'] as int,
      totalCost: json['total_cost'] as int,
      startsAt: json['starts_at'] as String,
    );

Map<String, dynamic> _$HomeSubscribeModelToJson(HomeSubscribeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'chef_id': instance.chefId,
      'days_number': instance.daysNumber,
      'total_cost': instance.totalCost,
      'is_available': instance.isAvailable,
      'starts_at': instance.startsAt,
      'chef': instance.chef,
    };
