import 'package:beitouti_users/core/data/base_remote_datasource.dart';
import 'package:beitouti_users/features/favourites/data/models/favourite_meal_model.dart';

abstract class FavouritesRemoteDataSource extends BaseRemoteDataSource {
  Future<List<FavouriteMealModel>> getFavouriteMeals({
    required String token,
  });
}
