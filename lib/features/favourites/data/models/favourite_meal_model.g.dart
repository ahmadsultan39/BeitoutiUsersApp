// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_meal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavouriteMealModel _$FavouriteMealModelFromJson(Map<String, dynamic> json) =>
    FavouriteMealModel(
      id: json['id'] as int,
      name: json['name'] as String,
      chefName: json['chef_name'] as String,
      imageUrl: json['image'] as String,
    );

Map<String, dynamic> _$FavouriteMealModelToJson(FavouriteMealModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'chef_name': instance.chefName,
      'image': instance.imageUrl,
    };
