import 'package:beitouti_users/core/data/base_remote_datasource.dart';
import 'package:beitouti_users/features/profile/data/data_sources/remote/profile_remote_data_source.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProfileRemoteDataSource)
class ProfileRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements ProfileRemoteDataSource {
  ProfileRemoteDataSourceImp({required Dio dio}) : super(dio: dio);
}
