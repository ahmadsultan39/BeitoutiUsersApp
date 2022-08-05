import 'package:beitouti_users/core/data/base_local_data_source.dart';
import 'package:beitouti_users/core/data/base_repository.dart';
import 'package:beitouti_users/core/error/exceptions.dart';
import 'package:beitouti_users/core/error/failures.dart';
import 'package:beitouti_users/core/network/network_info.dart';
import 'package:beitouti_users/features/favourites/data/data_sources/local/favourites_local_data_source.dart';
import 'package:beitouti_users/features/favourites/data/data_sources/remote/favourites_remote_data_source.dart';
import 'package:beitouti_users/features/favourites/domain/entities/favourite_meal.dart';
import 'package:beitouti_users/features/favourites/domain/repositories/favourites_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: FavouritesRepository)
class FavouritesRepositoryImp extends BaseRepositoryImpl
    implements FavouritesRepository {
  final FavouritesRemoteDataSource _http;
  final FavouritesLocalDataSource _local;

  FavouritesRepositoryImp(
    this._local,
    this._http, {
    required BaseLocalDataSource baseLocalDataSource,
    required NetworkInfo networkInfo,
  }) : super(
          baseLocalDataSource: baseLocalDataSource,
          networkInfo: networkInfo,
        );

  @override
  Future<Either<Failure, List<FavouriteMeal>>> getFavouriteMeals() async {
    try {
      final token = await _local.token;
      final favourites = await _http.getFavouriteMeals(token: token);
      return Right(favourites);
    } on HandledException catch (e) {
      return Left(ServerFailure(error: e.error));
    }
  }
}
