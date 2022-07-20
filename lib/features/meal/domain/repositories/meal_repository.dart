import 'package:beitouti_users/core/error/failures.dart';
import 'package:beitouti_users/features/meal/domain/entities/meal.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/data/base_repository.dart';

abstract class MealRepository extends BaseRepository {
  Future<Either<Failure, Meal>> getMeal(int mealId);

  Future<Either<Failure, void>> addToFavourite(int mealId);

  Future<Either<Failure, void>> removeFromFavourite(int mealId);

  Future<Either<Failure, int>> getAllCartMealsQuantity();

  Future<Either<Failure, int>> getCartMealQuantity(int mealId);

  Future<Either<Failure, void>> addMealToCart({
    required Meal meal,
    required String notes,
    required int quantity,
  });

  Future<Either<Failure, bool>> checkAddToCartAvailability({
    required int chefId,
  });
}
