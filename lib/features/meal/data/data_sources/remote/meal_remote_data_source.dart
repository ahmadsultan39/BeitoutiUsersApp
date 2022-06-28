import 'package:beitouti_users/core/data/base_remote_datasource.dart';
import 'package:beitouti_users/features/meal/data/models/meal_model.dart';

abstract class MealRemoteDataSource extends BaseRemoteDataSource {
  Future<MealModel> getMeal({
    required String token,
    required int mealId,
  });
  Future<void> addToFavourite({
    required String token,
    required int mealId,
  });
  Future<void> removeFromFavourite({
    required String token,
    required int mealId,
  });
}
