import 'package:beitouti_users/core/error/failures.dart';
import 'package:beitouti_users/features/meals/domain/entities/home_meal.dart';
import 'package:beitouti_users/features/meals/domain/entities/home_subscribe.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/entities/paginate_list.dart';

abstract class MealsRepository {
  Future<Either<Failure, List<HomeMeal>>> getTopRatedMeals();

  Future<Either<Failure, List<HomeMeal>>> getOfferedMeals();

  Future<Either<Failure, List<HomeMeal>>> getRecentMeals();

  Future<Either<Failure, List<HomeMeal>>> getTopOrderedMeals();

  Future<Either<Failure, List<HomeSubscribe>>> getTopSubscriptions();

  Future<Either<Failure, PaginateList<HomeMeal>>> getAllOfferedMeals(int page);

  Future<Either<Failure, PaginateList<HomeSubscribe>>> getAllSubscriptions(
      int page);
}
