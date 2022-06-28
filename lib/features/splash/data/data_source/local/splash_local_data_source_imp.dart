import 'package:beitouti_users/core/data/base_local_data_source.dart';
import 'package:beitouti_users/features/splash/data/data_source/local/splash_local_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: SplashLocalDataSource)
class SplashLocalDataSourceImp extends BaseLocalDataSourceImpl
    implements SplashLocalDataSource {
  SplashLocalDataSourceImp({required SharedPreferences sharedPreferences})
      : super(sharedPreferences: sharedPreferences);
}
