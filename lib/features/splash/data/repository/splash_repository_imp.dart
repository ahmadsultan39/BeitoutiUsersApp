import 'package:beitouti_users/core/data/base_local_data_source.dart';
import 'package:beitouti_users/core/data/base_repository.dart';
import 'package:beitouti_users/core/error/exceptions.dart';
import 'package:beitouti_users/core/error/failures.dart';
import 'package:beitouti_users/core/network/network_info.dart';
import 'package:beitouti_users/features/splash/data/data_source/local/splash_local_data_source.dart';
import 'package:beitouti_users/features/splash/data/data_source/remote/splash_remote_data_source.dart';
import 'package:beitouti_users/features/splash/domain/repository/splash_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SplashRepository)
class SplashRepositoryImp extends BaseRepositoryImpl
    implements SplashRepository {
  final SplashLocalDataSource _local;
  final SplashRemoteDataSource _http;

  SplashRepositoryImp(
    this._local,
    this._http, {
    required BaseLocalDataSource baseLocalDataSource,
    required NetworkInfo networkInfo,
  }) : super(
          baseLocalDataSource: _local,
          networkInfo: networkInfo,
        );

  @override
  Future<Either<Failure, bool>> checkAuth() async {
    try {
      final String token = await _local.token;
      return Right(token.isNotEmpty);
    } catch (e) {
      return const Left(CacheFailure());
    }
  }
}
