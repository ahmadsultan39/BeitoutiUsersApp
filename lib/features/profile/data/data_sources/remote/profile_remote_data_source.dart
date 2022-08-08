import 'package:beitouti_users/core/data/base_remote_datasource.dart';

abstract class ProfileRemoteDataSource extends BaseRemoteDataSource {
  Future<void> logout({
    required String token,
  });
}
