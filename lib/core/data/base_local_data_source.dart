import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../util/constants.dart';

abstract class BaseLocalDataSource {
  Future<String> get token;

  Future<void> logout();
}

@LazySingleton(as: BaseLocalDataSource)
class BaseLocalDataSourceImpl implements BaseLocalDataSource {
  final SharedPreferences sharedPreferences;

  BaseLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<String> get token => Future.value(
      sharedPreferences.getString(SharedPreferencesKeys.apiToken) ?? '');

  @override
  Future<void> logout() async {
    await sharedPreferences.clear();
  }
}
