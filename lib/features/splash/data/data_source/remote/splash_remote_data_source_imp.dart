import 'package:beitouti_users/core/data/base_remote_datasource.dart';
import 'package:beitouti_users/features/splash/data/data_source/remote/splash_remote_data_source.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SplashRemoteDataSource)
class SplashRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements SplashRemoteDataSource {
  SplashRemoteDataSourceImp({
    required Dio dio,
  }) : super(dio: dio);
}
