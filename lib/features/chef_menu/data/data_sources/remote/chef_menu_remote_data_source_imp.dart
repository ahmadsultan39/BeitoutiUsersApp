import 'package:beitouti_users/core/data/base_remote_datasource.dart';
import 'package:beitouti_users/features/chef_menu/data/models/chef_category_model.dart';
import 'package:beitouti_users/features/chef_menu/data/models/chef_info_model.dart';
import 'package:beitouti_users/features/chef_menu/data/models/chef_meal_model.dart';
import 'package:beitouti_users/features/chef_menu/data/models/subscription_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/util/constants.dart';
import 'chef_menu_remote_data_source.dart';

@LazySingleton(as: ChefMenuRemoteDataSource)
class ChefMenuRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements ChefMenuRemoteDataSource {
  ChefMenuRemoteDataSourceImp({required Dio dio}) : super(dio: dio);

  @override
  Future<ChefInfoModel> getChefInfo(
          {required String token, required int id}) async =>
      await performGetRequest<ChefInfoModel>(
        endpoint: Endpoints.getChefInfo(id),
        token: token,
      );

  @override
  Future<List<ChefCategoryModel>> getChefCategories(
          {required String token, required int id}) async =>
      await performGetListRequest<ChefCategoryModel>(
        endpoint: Endpoints.getChefCategories(id),
        token: token,
      );

  @override
  Future<List<ChefMealModel>> getChefCategoryMeals(
          {required String token,
          required int chefId,
          required int categoryId}) async =>
      await performGetListRequest<ChefMealModel>(
        endpoint: Endpoints.getChefCategoryMeals(
          chefId,
          categoryId,
        ),
        token: token,
      );

  @override
  Future<List<SubscriptionModel>> getChefSubscriptions(
          {required String token, required int chefId}) async =>
      await performGetListRequest<SubscriptionModel>(
        endpoint: Endpoints.getChefSubscriptions(chefId),
        token: token,
      );
}
