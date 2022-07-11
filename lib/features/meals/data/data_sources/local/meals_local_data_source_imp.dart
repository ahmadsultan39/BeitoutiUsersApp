import 'package:beitouti_users/core/data/base_local_datasource.dart';
import 'package:beitouti_users/features/meals/data/data_sources/local/meals_local_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: MealsLocalDataSource)
class MealsLocalDataSourceImp extends BaseLocalDataSourceImpl
    implements MealsLocalDataSource {
  MealsLocalDataSourceImp({required SharedPreferences sharedPreferences})
      : super(sharedPreferences: sharedPreferences);
}
