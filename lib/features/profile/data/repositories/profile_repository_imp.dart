import 'package:beitouti_users/core/data/base_local_data_source.dart';
import 'package:beitouti_users/core/data/base_repository.dart';
import 'package:beitouti_users/core/network/network_info.dart';
import 'package:beitouti_users/features/profile/data/data_sources/local/profile_local_data_source.dart';
import 'package:beitouti_users/features/profile/data/data_sources/remote/profile_remote_data_source.dart';
import 'package:beitouti_users/features/profile/domain/repositories/profile_repository.dart';
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
}
