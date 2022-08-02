import 'dart:convert';

import 'package:beitouti_users/core/data/base_remote_datasource.dart';
import 'package:beitouti_users/core/network/models/base_list_response_model.dart';
import 'package:beitouti_users/features/chef_menu/data/models/chef_category_model.dart';
import 'package:beitouti_users/features/chef_menu/data/models/chef_info_model.dart';
import 'package:beitouti_users/features/chef_menu/data/models/chef_meal_model.dart';
import 'package:beitouti_users/features/chef_menu/data/models/subscription_meal_model.dart';
import 'package:beitouti_users/features/chef_menu/data/models/subscription_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/network/models/base_response_model.dart';
import '../../../../../core/util/constants.dart';
import 'chef_menu_remote_data_source.dart';

@LazySingleton(as: ChefMenuRemoteDataSource)
class ChefMenuRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements ChefMenuRemoteDataSource {
  ChefMenuRemoteDataSourceImp({required Dio dio}) : super(dio: dio);

  @override
  Future<ChefInfoModel> getChefInfo(
          {required String token, required int id}) async
      // {
      //   final BaseResponseModel<ChefInfoModel> finalResponse =
      //   BaseResponseModel<ChefInfoModel>.fromJson(json.decode(
      //       '{"data": {"name": "‫الدمشقية‬ ‫الوردة‬ ‫مطبخ‬","delivery_starts_at": "10:00:00","delivery_ends_at": "18:00:00","is_available": false,"location_name": "Brazeh","ratings": 3.763888888888889,"rates_count": 62,"orders_count": 2,"max_meals_per_day": 10,"remaining_available_chef_meals_count": 10}}'
      //       ));
      //   return finalResponse.data!;
      // }
      =>
      await performGetRequest<ChefInfoModel>(
        endpoint: Endpoints.getChefInfo(id),
        token: token,
      );

  @override
  Future<List<ChefCategoryModel>> getChefCategories(
          {required String token, required int id}) async
      // {
      //   final BaseListResponseModel<ChefCategoryModel> finalResponse =
      //   BaseListResponseModel<ChefCategoryModel>.fromJson(json.decode(
      //       '{"data": [{"id": 1,"name": "عروض"},{"id": 3,"name": "أطباق شرقية"}]}' ));
      //   return finalResponse.data!;
      // }
      =>
      await performGetListRequest<ChefCategoryModel>(
        endpoint: Endpoints.getChefCategories(id),
        token: token,
      );

  @override
  Future<List<ChefMealModel>> getChefCategoryMeals(
          {required String token,
          required int chefId,
          required int categoryId}) async
      // {
      //   final BaseListResponseModel<ChefMealModel> finalResponse =
      //   BaseListResponseModel<ChefMealModel>.fromJson(json.decode(
      //   '{"data": [{"id": 5,"image": "/storage/mealsImages/mlokhieh.jpg","name": "ملوخية","price": 15000,"is_available": false,"discount_percentage": 30,"rating": null,"rates_count": 0,"remaining_available_meal_count": 5},{"id": 7,"image": "/storage/mealsImages/shishBarak.jfif","name": "ششبرك","price": 16000,"is_available": false,"discount_percentage": 45,"rating": null,"rates_count": 0,"remaining_available_meal_count": 4},{"id": 10,"image": "/storage/mealsImages/kebehM2lieh.jfif","name": "كبة مقلية","price": 16000,"is_available": false,"discount_percentage": 30,"rating": 4,"rates_count": 60,"remaining_available_meal_count": 2}]}'
      //    ));
      //   return finalResponse.data!;
      // }
      =>
      await performGetListRequest<ChefMealModel>(
        endpoint: Endpoints.getChefCategoryMeals(
          chefId,
          categoryId,
        ),
        token: token,
      );

  @override
  Future<List<SubscriptionModel>> getChefSubscriptions(
          {required String token, required int chefId}) async

      // {
      //   final BaseListResponseModel<SubscriptionModel> finalResponse =
      //   BaseListResponseModel<SubscriptionModel>.fromJson(json.decode(
      //       '{"data": [{"id": 1,"chef_id": 1,"name": "الاشتراك الذهبي","days_number": 7,"meal_delivery_time": "04:00:00","is_available": true,"starts_at": "2022-06-05","total_cost": 110694,"rating": 3.5,"rating_count": 124,"available_subscriptions_count": 0,"has_subscribed": true}]}'
      //    ));
      //   return finalResponse.data!;
      // }
      =>
      await performGetListRequest<SubscriptionModel>(
        endpoint: Endpoints.getChefSubscriptions(chefId),
        token: token,
      );

// @override
// Future<List<SubscriptionMealModel>> getSubscriptionMeals({required String token, required int id})  async =>
//     await performGetListRequest<SubscriptionMealModel>(
//       endpoint: Endpoints.getSubscriptionMeals(id),
//       token: token,
//     );
}
