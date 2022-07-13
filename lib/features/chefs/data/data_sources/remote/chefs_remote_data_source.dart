import 'package:beitouti_users/features/chefs/data/models/chef_model.dart';

import '../../../../../core/data/base_remote_datasource.dart';

abstract class ChefsRemoteDataSource extends BaseRemoteDataSource {
  Future<List<ChefModel>> getNearest({required String token});

  Future<List<ChefModel>> getTopRated({required String token});

  Future<List<ChefModel>> getTopOrdered({required String token});

  Future<List<ChefModel>> getMostRecent({required String token});
}
