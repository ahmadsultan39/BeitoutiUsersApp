library base_response_model;

import 'package:beitouti_users/core/models/order_meal_model.dart';
import 'package:beitouti_users/core/models/order_model.dart';
import 'package:beitouti_users/core/network/models/paginate_response_model.dart';
import 'package:beitouti_users/features/auth/data/models/user_model.dart';
import 'package:beitouti_users/features/meals/data/models/home_meal_model.dart';
import 'package:beitouti_users/features/meals/data/models/home_subscribe_model.dart';
import 'package:beitouti_users/features/search/data/models/search_chef_model.dart';
import 'package:beitouti_users/features/search/data/models/search_meal_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../../features/auth/data/models/accessibility_status_model.dart';
import '../../../features/chef_menu/data/models/chef_info_model.dart';
import '../../../features/meal/data/models/meal_model.dart';
import '../../../features/search/data/models/search_subscription_model.dart';
import '../../../features/subscription/data/models/subscription_meal_model.dart';
import '../../../features/subscription/data/models/subscription_model.dart';

part 'base_response_model.g.dart';

@JsonSerializable()
class BaseResponseModel<T> {
  @JsonKey(name: 'status')
  final int? status;
  @JsonKey(name: 'errors')
  final String? errors;
  @JsonKey(name: 'data', fromJson: _dataFromJson, toJson: _dataToJson)
  final T? data;

  BaseResponseModel({this.errors, this.status, this.data});

  factory BaseResponseModel.fromJson(Map<String, dynamic> json) {
    return _$BaseResponseModelFromJson<T>(json);
  }
}

T? _dataFromJson<T>(Object? data) {
  debugPrint("T is: ${T.toString()}");
  if(data == null){
    return null;
  }
  else if (data is List<dynamic> && data.isEmpty) {
    return null;
  } else if (T.toString() == AccessibilityStatusModel.className) {
    return AccessibilityStatusModel.fromJson(data as Map<String, dynamic>) as T;
  } else if (T.toString() == UserModel.className) {
    return UserModel.fromJson(data as Map<String, dynamic>) as T;
  }
  else if (T.toString() == ChefInfoModel.className) {
    return ChefInfoModel.fromJson(data as Map<String, dynamic>) as T;
  } else if (T.toString() == MealModel.className) {
    return MealModel.fromJson(data as Map<String, dynamic>) as T;
  } else if (T.toString() == OrderMealModel.className) {
    return OrderMealModel.fromJson(data as Map<String, dynamic>) as T;
  } else if (T.toString() == OrderModel.className) {
    return OrderModel.fromJson(data as Map<String, dynamic>) as T;
  } else if (T.toString() == SubscriptionsMealModel.className) {
    return SubscriptionsMealModel.fromJson(data as Map<String, dynamic>) as T;
  } else if (T.toString() == SubscriptionModel.className) {
    return SubscriptionModel.fromJson(data as Map<String, dynamic>) as T;
  } else if (T.toString() == HomeMealModel.paginateName) {
    return PaginateResponseModel<HomeMealModel>.fromJson(
      data as Map<String, dynamic>,
    ) as T;
  } else if (T.toString() == OrderModel.paginateName) {
    return PaginateResponseModel<OrderModel>.fromJson(
      data as Map<String, dynamic>,
    ) as T;
  } else if (T.toString() == HomeSubscribeModel.paginateName) {
    return PaginateResponseModel<HomeSubscribeModel>.fromJson(
      data as Map<String, dynamic>,
    ) as T;
  }else if (T.toString() == SearchMealModel.paginateName) {
    return PaginateResponseModel<SearchMealModel>.fromJson(
      data as Map<String, dynamic>,
    ) as T;
  }else if (T.toString() == SearchChefModel.paginateName) {
    return PaginateResponseModel<SearchChefModel>.fromJson(
      data as Map<String, dynamic>,
    ) as T;
  } else if (T.toString() == SearchSubscriptionModel.paginateName) {
    return PaginateResponseModel<SearchSubscriptionModel>.fromJson(
      data as Map<String, dynamic>,
    ) as T;
  } else if (T.toString() == 'Null') {
    debugPrint('Null Data');
    return null;
  }
  throw Exception('parse error');
}

Map<String, dynamic> _dataToJson<T, S, U>(T input, [S? other1, U? other2]) =>
    {'data': input};
