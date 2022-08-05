import 'package:beitouti_users/core/data/base_repository.dart';
import 'package:beitouti_users/core/error/failures.dart';
import 'package:dartz/dartz.dart';

import '../../../favourites/domain/entities/favourite_meal.dart';

abstract class FavouritesRepository extends BaseRepository {
  Future<Either<Failure, List<FavouriteMeal>>> getFavouriteMeals();
}
