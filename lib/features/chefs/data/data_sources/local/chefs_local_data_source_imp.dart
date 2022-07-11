import 'package:beitouti_users/core/data/base_local_datasource.dart';
import 'package:beitouti_users/features/chefs/data/data_sources/local/chefs_local_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';


@LazySingleton(as: ChefsLocalDataSource)
class ShowMenuLocalDataSourceImp extends BaseLocalDataSourceImpl
    implements ChefsLocalDataSource {
  ShowMenuLocalDataSourceImp({required SharedPreferences sharedPreferences})
      : super(sharedPreferences: sharedPreferences);
}
