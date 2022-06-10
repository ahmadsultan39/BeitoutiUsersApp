import 'package:beitouti_users/core/error/exceptions.dart';
import 'package:beitouti_users/core/error/failures.dart';
import 'package:beitouti_users/features/meals/data/data_sources/local/meals_local_data_source.dart';
import 'package:beitouti_users/features/meals/data/data_sources/remote/meals_remote_data_source.dart';
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
    } on ImplementedError catch (e) {
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
    } on ImplementedError catch (e) {
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
    } on ImplementedError catch (e) {
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
    } on ImplementedError catch (e) {
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
    } on ImplementedError catch (e) {
      return Left(ServerFailure(error: e.error));
    }
  }
}
