import 'package:beitouti_users/features/chef_menu/domain/entities/chef_category.dart';
import 'package:beitouti_users/features/chef_menu/domain/entities/chef_info.dart';
import 'package:beitouti_users/features/chef_menu/domain/entities/chef_meal.dart';
import 'package:beitouti_users/features/chef_menu/domain/entities/subscription_meal.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/subscription.dart';

abstract class ChefMenuRepository {
  Future<Either<Failure, ChefInfo>> getChefInfo({required int id});

  Future<Either<Failure, List<Subscription>>> getChefSubscriptions(
      {required int id});

  // Future<Either<Failure, List<SubscriptionMeal>>> getSubscriptionMeals(
  //     {required int id});

  Future<Either<Failure, List<ChefCategory>>> getChefCategories(
      {required int id});

  Future<Either<Failure, List<ChefMeal>>> getChefCategoryMeals({
    required int chefId,
    required int categoryId,
  });
}
