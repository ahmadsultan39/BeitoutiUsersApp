import 'package:beitouti_users/features/chefs/data/data_sources/local/chefs_local_data_source.dart';
import 'package:beitouti_users/features/chefs/data/data_sources/remote/chefs_remote_data_source.dart';
import 'package:beitouti_users/features/chefs/domain/entities/chef.dart';
import 'package:beitouti_users/features/chefs/domain/repositories/chefs_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ChefsRepository)
class ChefsRepositoryImp extends BaseRepositoryImpl
implements ChefsRepository {
  final ChefsRemoteDataSource _http;
  final ChefsLocalDataSource _local;

  ChefsRepositoryImp(this._http,
      this._local, {
        required NetworkInfo networkInfo,
      }) : super(
    baseLocalDataSource: _local,
    networkInfo: networkInfo,
  );

  @override
  Future<Either<dynamic, List<Chef>>> getMostRecent() async {
    try {
      final token = await _local.token;
      final result = await _http.getMostRecent(
        token: token,
      );
      return Right(
        result,
      );
    } on ServerException catch (e) {
      return Left(ServerFailure(error: e.error));
    } catch (e) {
      return Left(ServerFailure(error: ErrorMessage.ERROR401));
    }
  }

  @override
  Future<Either<dynamic, List<Chef>>> getNearest() async {
    try {
      final token = await _local.token;
      final result = await _http.getNearest(
        token: token,
      );
      return Right(
        result,
      );
    } on ServerException catch (e) {
      return Left(ServerFailure(error: e.error));
    } catch (e) {
      return Left(ServerFailure(error: ErrorMessage.ERROR401));
    }
  }

  @override
  Future<Either<dynamic, List<Chef>>> getTopOrders() async {
    try {
      final token = await _local.token;
      final result = await _http.getTopOrdered(
        token: token,
      );
      return Right(
        result,
      );
    } on ServerException catch (e) {
      return Left(ServerFailure(error: e.error));
    } catch (e) {
      return Left(ServerFailure(error: ErrorMessage.ERROR401));
    }
  }

  @override
  Future<Either<dynamic, List<Chef>>> getTopRated() async {
    try {
      final token = await _local.token;
      final result = await _http.getTopRated(
        token: token,
      );
      return Right(
        result,
      );
    } on ServerException catch (e) {
      return Left(ServerFailure(error: e.error));
    } catch (e) {
      return Left(ServerFailure(error: ErrorMessage.ERROR401));
    }
  }


}