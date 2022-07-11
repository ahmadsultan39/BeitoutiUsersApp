import 'package:beitouti_users/features/chef_menu/data/models/chef_category_model.dart';
import 'package:beitouti_users/features/chef_menu/data/models/chef_info_model.dart';
import 'package:beitouti_users/features/chef_menu/data/models/chef_meal_model.dart';
import 'package:beitouti_users/features/chef_menu/data/models/subscription_meal_model.dart';
import 'package:beitouti_users/features/chef_menu/data/models/subscription_model.dart';

import '../../../../../core/data/base_remote_datasource.dart';

abstract class ChefMenuRemoteDataSource extends BaseRemoteDataSource {
  Future<ChefInfoModel> getChefInfo({required String token, required int id});

  Future<List<ChefCategoryModel>> getChefCategories(
      {required String token, required int id});

  Future<List<ChefMealModel>> getChefCategoryMeals(
      {required String token, required int chefId, required int categoryId});

  Future<List<SubscriptionModel>> getChefSubscriptions(
      {required String token, required int chefId});

  // Future<List<SubscriptionMealModel>> getSubscriptionMeals(
  //     {required String token, required int id});
}
