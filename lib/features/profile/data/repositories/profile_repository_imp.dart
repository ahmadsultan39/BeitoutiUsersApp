import 'package:beitouti_users/core/data/base_local_data_source.dart';
import 'package:beitouti_users/core/data/base_repository.dart';
import 'package:beitouti_users/core/error/exceptions.dart';
import 'package:beitouti_users/core/error/failures.dart';
import 'package:beitouti_users/core/network/network_info.dart';
import 'package:beitouti_users/features/profile/data/data_sources/local/profile_local_data_source.dart';
import 'package:beitouti_users/features/profile/data/data_sources/remote/profile_remote_data_source.dart';
import 'package:beitouti_users/features/profile/domain/entities/profile.dart';
import 'package:beitouti_users/features/profile/domain/repositories/profile_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProfileRepository)
class ProfileRepositoryImp extends BaseRepositoryImpl
    implements ProfileRepository {
  final ProfileLocalDataSource _local;
  final ProfileRemoteDataSource _http;

  ProfileRepositoryImp(
    this._local,
    this._http, {
    required BaseLocalDataSource baseLocalDataSource,
    required NetworkInfo networkInfo,
  }) : super(
          baseLocalDataSource: baseLocalDataSource,
          networkInfo: networkInfo,
        );

  @override
  Future<Either<Failure, Profile>> getProfileInfo() async {
    try {
      final profile = await _local.getProfileInfo();
      return Right(profile);
    } on CacheException catch (e) {
      return const Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      final token = await _local.token;
      await _http.logout(token: token);
      await baseLocalDataSource.logout();
      return const Right(null);
    } on HandledException catch (e) {
      return Left(ServerFailure(error: e.error));
    }
  }
}
