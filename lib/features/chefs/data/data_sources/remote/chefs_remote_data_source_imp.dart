import 'package:beitouti_users/features/chefs/data/data_sources/remote/chefs_remote_data_source.dart';
import 'package:beitouti_users/features/chefs/data/models/chef_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_remote_datasource.dart';
import '../../../../../core/util/constants.dart';

@LazySingleton(as: ChefsRemoteDataSource)
class ShowMenuRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements ChefsRemoteDataSource {
  ShowMenuRemoteDataSourceImp({required Dio dio}) : super(dio: dio);

  @override
  Future<List<ChefModel>> getMostRecent({required String token}) async =>
      await performGetListRequest<ChefModel>(
        endpoint: Endpoints.mostRecentChefs,
        token: token,
      );

  @override
  Future<List<ChefModel>> getNearest({required String token}) async =>
      await performGetListRequest<ChefModel>(
        endpoint: Endpoints.nearestChefs,
        token: token,
      );

  @override
  Future<List<ChefModel>> getTopOrdered({required String token}) async =>
      await performGetListRequest<ChefModel>(
        endpoint: Endpoints.topOrderedChefs,
        token: token,
      );

  @override
  Future<List<ChefModel>> getTopRated({required String token}) async =>
      await performGetListRequest<ChefModel>(
        endpoint: Endpoints.topRatedChefs,
        token: token,
      );
}
