

import 'package:beitouti_users/core/error/failures.dart';
import 'package:beitouti_users/features/chef_menu/domain/entities/chef_category.dart';
import 'package:beitouti_users/features/chef_menu/domain/entities/chef_info.dart';
import 'package:beitouti_users/features/chef_menu/domain/entities/chef_meal.dart';
import 'package:beitouti_users/features/chef_menu/domain/entities/subscription.dart';
import 'package:beitouti_users/features/chef_menu/domain/entities/subscription_meal.dart';
import 'package:beitouti_users/features/chef_menu/domain/repositories/chef_menu_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/util/constants.dart';
import '../data_sources/local/chef_menu_local_data_source.dart';
import '../data_sources/remote/chef_menu_remote_data_source.dart';

@LazySingleton(as: ChefMenuRepository)
class ChefMenuRepositoryImp
    implements ChefMenuRepository {
  final ChefMenuRemoteDataSource _http;
  final ChefMenuLocalDataSource _local;

  ChefMenuRepositoryImp(this._http, this._local);

  @override
  Future<Either<Failure, ChefInfo>> getChefInfo({required int id}) async {
    try {
      final token = await _local.token;
      final result = await _http.getChefInfo(
        token: token,
        id: id,
      );
      return Right(
        result,
      );
    } on HandledException catch (e) {
      return Left(ServerFailure(error: e.error));
    } catch (e) {
      return Left(ServerFailure(error: ErrorMessage.someThingWentWrong));
    }
  }

  @override
  Future<Either<Failure, List<ChefCategory>>> getChefCategories({required int id}) async {
    try {
      final token = await _local.token;
      final result = await _http.getChefCategories(
        token: token,
        id: id,
      );
      return Right(
        result,
      );
    } on ServerException catch (e) {
      return Left(ServerFailure(error: e.error));
    } catch (e) {
      return Left(ServerFailure(error: ErrorMessage.someThingWentWrong));
    }
  }

  @override
  Future<Either<Failure, List<ChefMeal>>> getChefCategoryMeals({required int chefId, required int categoryId}) async {
    try {
      final token = await _local.token;
      final result = await _http.getChefCategoryMeals(
        token: token,
        chefId: chefId,
        categoryId: categoryId,
      );
      return Right(
        result,
      );
    } on ServerException catch (e) {
      return Left(ServerFailure(error: e.error));
    } catch (e) {
      return Left(ServerFailure(error: ErrorMessage.someThingWentWrong));
    }
  }

  @override
  Future<Either<Failure, List<Subscription>>> getChefSubscriptions({required int id}) async {
    try {
      final token = await _local.token;
      final result = await _http.getChefSubscriptions(
        token: token,
        chefId: id,
      );
      return Right(
        result,
      );
    } on ServerException catch (e) {
      return Left(ServerFailure(error: e.error));
    } catch (e) {
      return Left(ServerFailure(error: ErrorMessage.someThingWentWrong));
    }
  }

  // @override
  // Future<Either<Failure, List<SubscriptionMeal>>> getSubscriptionMeals({required int id})  async {
  //   try {
  //     final token = await _local.token;
  //     final result = await _http.getSubscriptionMeals(
  //       token: token,
  //       id: id,
  //     );
  //     return Right(
  //       result,
  //     );
  //   } on ServerException catch (e) {
  //     return Left(ServerFailure(error: e.error));
  //   } catch (e) {
  //     return Left(ServerFailure(error: ErrorMessage.someThingWentWrong));
  //   }
  // }
}