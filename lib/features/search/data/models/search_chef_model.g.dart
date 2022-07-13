// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_chef_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchChefModel _$SearchChefModelFromJson(Map<String, dynamic> json) =>
    SearchChefModel(
      json['id'] as int,
      json['name'] as String,
      (json['rating'] as num?)?.toDouble(),
      json['is_available'] as bool?,
      json['profile_picture'] as String?,
      json['rates_count'] as int?,
    );

Map<String, dynamic> _$SearchChefModelToJson(SearchChefModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rating': instance.rating,
      'is_available': instance.isAvailable,
      'profile_picture': instance.image,
      'rates_count': instance.ratesCount,
    };
