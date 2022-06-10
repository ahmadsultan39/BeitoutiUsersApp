import 'package:beitouti_users/features/chefs/data/models/chef_model.dart';

abstract class ChefsRemoteDataSource extends BaseRemoteDataSource {
  Future<List<ChefModel>> getNearest({required String token});

  Future<List<ChefModel>> getTopRated({required String token});

  Future<List<ChefModel>> getTopOrdered({required String token});

  Future<List<ChefModel>> getMostRecent({required String token});
}
