library base_list_response_model;

import 'package:beitouti_users/features/chef_menu/data/models/chef_category_model.dart';
import 'package:beitouti_users/features/chef_menu/data/models/chef_meal_model.dart';
import 'package:beitouti_users/features/chefs/data/models/chef_model.dart';
import 'package:beitouti_users/features/meals/data/models/home_chef_model.dart';
import 'package:beitouti_users/features/meals/data/models/home_meal_model.dart';
import 'package:beitouti_users/features/meals/data/models/home_subscribe_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../features/chef_menu/data/models/subscription_meal_model.dart';
import '../../../features/chef_menu/data/models/subscription_model.dart';

part 'base_list_response_model.g.dart';

@JsonSerializable()
class BaseListResponseModel<T> {
  @JsonKey(name: 'errors')
  final String? error;
  @JsonKey(name: 'data')
  @_Converter()
  final List<T>? data;

  BaseListResponseModel({this.error, this.data});

  factory BaseListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BaseListResponseModelFromJson<T>(json);
}

class _Converter<T> implements JsonConverter<T, Object> {
  const _Converter();

  @override
  T fromJson(Object json) {
    debugPrint('T is ${T.toString()}');
    if (json is Map<String, dynamic> &&
        T.toString() == HomeMealModel.className) {
      return HomeMealModel.fromJson(json) as T;
    }
    if (json is Map<String, dynamic> &&
        T.toString() == HomeSubscribeModel.className) {
      return HomeSubscribeModel.fromJson(json) as T;
    }
    if (json is Map<String, dynamic> &&
        T.toString() == ChefModel.className) {
      return ChefModel.fromJson(json) as T;
    }
    if (json is Map<String, dynamic> &&
        T.toString() == SubscriptionModel.className) {
      return SubscriptionModel.fromJson(json) as T;
    }

    if (json is Map<String, dynamic> &&
        T.toString() == SubscriptionMealModel.className) {
      return SubscriptionMealModel.fromJson(json) as T;
    }
    if (json is Map<String, dynamic> &&
        T.toString() == ChefCategoryModel.className) {
      return ChefCategoryModel.fromJson(json) as T;
    }
    if (json is Map<String, dynamic> &&
        T.toString() == ChefMealModel.className) {
      return ChefMealModel.fromJson(json) as T;
    }

    debugPrint('Parse Error');
    throw Exception('Parse Error');
  }

  @override
  Object toJson(T object) {
    // This will only work if `object` is a native JSON type:
    //   num, String, bool, null, etc
    // Or if it has a `toJson()` function`.
    return object!;
  }
}
