import 'package:beitouti_users/core/entities/paginate_list.dart';
import 'package:beitouti_users/core/error/exceptions.dart';
import 'package:beitouti_users/core/error/failures.dart';
import 'package:beitouti_users/features/meals/data/data_sources/local/meals_local_data_source.dart';
import 'package:beitouti_users/features/meals/data/data_sources/remote/meals_remote_data_source.dart';
import 'package:beitouti_users/features/meals/data/models/home_meal_model.dart';
import 'package:beitouti_users/features/meals/data/models/home_subscribe_model.dart';
import 'package:beitouti_users/features/meals/domain/entities/home_meal.dart';
import 'package:beitouti_users/features/meals/domain/entities/home_subscribe.dart';
import 'package:beitouti_users/features/meals/domain/repositories/meals_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: MealsRepository)
class MealsRepositoryImp implements MealsRepository {
  final MealsLocalDataSource _local;
  final MealsRemoteDataSource _remote;

  MealsRepositoryImp(this._local, this._remote);

  @override
  Future<Either<Failure, List<HomeMeal>>> getOfferedMeals() async {
    try {
      final _token = await _local.token;
      final result = await _remote.getOfferedMeals(
        token: _token,
      );
      return Right(result);
    } on HandledException catch (e) {
      return Left(ServerFailure(error: e.error));
    }
  }

  @override
  Future<Either<Failure, List<HomeMeal>>> getRecentMeals() async {
    try {
      final _token = await _local.token;
      final result = await _remote.getRecentMeals(
        token: _token,
      );
      return Right(result);
    } on HandledException catch (e) {
      return Left(ServerFailure(error: e.error));
    }
  }

  @override
  Future<Either<Failure, List<HomeMeal>>> getTopOrderedMeals() async {
    try {
      final _token = await _local.token;
      final result = await _remote.getTopOrderedMeals(
        token: _token,
      );
      return Right(result);
    } on HandledException catch (e) {
      return Left(ServerFailure(error: e.error));
    }
  }

  @override
  Future<Either<Failure, List<HomeMeal>>> getTopRatedMeals() async {
    try {
      final _token = await _local.token;
      final result = await _remote.getTopRatedMeals(
        token: _token,
      );
      return Right(result);
    } on HandledException catch (e) {
      return Left(ServerFailure(error: e.error));
    }
  }

  @override
  Future<Either<Failure, List<HomeSubscribe>>> getTopSubscriptions() async {
    try {
      final _token = await _local.token;
      final result = await _remote.getTopSubscriptions(
        token: _token,
      );
      return Right(result);
    } on HandledException catch (e) {
      return Left(ServerFailure(error: e.error));
    }
  }

  @override
  Future<Either<Failure, PaginateList<HomeMeal>>> getAllOfferedMeals(
    int page,
  ) async {
    try {
      final _token = await _local.token;
      final result = await _remote.getAllOfferedMeals(
        token: _token,
        page: page,
      );

      final List<HomeMeal> list = [];
      for (HomeMealModel homeMealModel in result.data) {
        list.add(
          HomeMeal(
            id: homeMealModel.id,
            image: homeMealModel.image,
            name: homeMealModel.name,
            price: homeMealModel.price,
            isAvailable: homeMealModel.isAvailable,
            discountPercentage: homeMealModel.discountPercentage,
            rating: homeMealModel.rating,
            ratesCount: homeMealModel.ratesCount,
            chef: homeMealModel.chef,
            priceAfterDiscount: homeMealModel.priceAfterDiscount,
          ),
        );
      }

      return Right(
        PaginateList(
          total: result.total,
          pages: result.numPages,
          data: list,
        ),
      );
    } on HandledException catch (e) {
      return Left(ServerFailure(error: e.error));
    }
  }

  @override
  Future<Either<Failure, PaginateList<HomeSubscribe>>> getAllSubscriptions(
      int page) async {
    try {
      final _token = await _local.token;
      final result = await _remote.getAllSubscriptions(
        token: _token,
        page: page,
      );

      final List<HomeSubscribe> list = [];
      for (HomeSubscribeModel homeSubscribeModel in result.data) {
        list.add(
          HomeSubscribe(
            name: homeSubscribeModel.name,
            id: homeSubscribeModel.id,
            chef: homeSubscribeModel.chef,
            chefId: homeSubscribeModel.chefId,
            daysNumber: homeSubscribeModel.daysNumber,
            isAvailable: homeSubscribeModel.isAvailable,
            startsAt: homeSubscribeModel.startsAt,
            totalCost: homeSubscribeModel.totalCost,
          ),
        );
      }

      return Right(
        PaginateList(
          total: result.total,
          pages: result.numPages,
          data: list,
        ),
      );
    } on HandledException catch (e) {
      return Left(ServerFailure(error: e.error));
    }
  }
}
