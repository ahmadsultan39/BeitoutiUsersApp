import 'package:beitouti_users/core/data/base_local_data_source.dart';
import 'package:beitouti_users/core/data/base_repository.dart';
import 'package:beitouti_users/core/error/exceptions.dart';
import 'package:beitouti_users/core/error/failures.dart';
import 'package:beitouti_users/core/models/cart_item_model.dart';
import 'package:beitouti_users/core/network/network_info.dart';
import 'package:beitouti_users/features/meal/data/data_sources/local/meal_local_data_source.dart';
import 'package:beitouti_users/features/meal/data/data_sources/remote/meal_remote_data_source.dart';
import 'package:beitouti_users/features/meal/domain/entities/meal.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../domain/repositories/meal_repository.dart';

@LazySingleton(as: MealRepository)
class MealRepositoryImp extends BaseRepositoryImpl implements MealRepository {
  final MealLocalDataSource _local;
  final MealRemoteDataSource _http;

  MealRepositoryImp(
    this._local,
    this._http, {
    required BaseLocalDataSource baseLocalDataSource,
    required NetworkInfo networkInfo,
  }) : super(
          baseLocalDataSource: baseLocalDataSource,
          networkInfo: networkInfo,
        );

  @override
  Future<Either<Failure, Meal>> getMeal(int mealId) async {
    try {
      final _token = await _local.token;
      final meal = await _http.getMeal(token: _token, mealId: mealId);
      return Right(meal);
    } on HandledException catch (e) {
      return Left(ServerFailure(error: e.error));
    }
  }

  @override
  Future<Either<Failure, void>> addToFavourite(int mealId) async {
    try {
      final _token = await _local.token;
      await _http.addToFavourite(token: _token, mealId: mealId);
      return const Right(null);
    } on HandledException catch (e) {
      return Left(ServerFailure(error: e.error));
    }
  }

  @override
  Future<Either<Failure, void>> removeFromFavourite(int mealId) async {
    try {
      final _token = await _local.token;
      await _http.removeFromFavourite(token: _token, mealId: mealId);
      return const Right(null);
    } on HandledException catch (e) {
      return Left(ServerFailure(error: e.error));
    }
  }

  @override
  Future<Either<Failure, void>> addMealToCart({
    required Meal meal,
    required String notes,
    required int quantity,
  }) async {
    try {
      final CartItemModel cartItemModel = CartItemModel(
        id: meal.id,
        chefId: meal.chef.id,
        mealName: meal.name,
        chefName: meal.chef.name,
        mealImage: meal.image,
        mealQuantity: quantity,
        deliveryCost: meal.deliveryFee.round(),
        mealCost: meal.price,
        maxMealsPerDay: meal.maxMealsPerDay,
        maxChefMealsPerDay: meal.remainingAvailableMealCount,
        deliveryStartsAt: meal.chef.deliveryStartsAt,
        notes: notes,
      );
      await _local.addToCart(cartItemModel);
      return const Right(null);
    } on CacheException catch (e) {
      return const Left(CacheFailure());
    }
  }
}
