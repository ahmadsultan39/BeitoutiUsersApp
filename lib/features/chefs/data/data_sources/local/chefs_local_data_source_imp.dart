import 'package:beitouti_users/features/chefs/data/data_sources/local/chefs_local_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/data/base_local_data_source.dart';

@LazySingleton(as: ChefsLocalDataSource)
class ShowMenuLocalDataSourceImp extends BaseLocalDataSourceImp
    implements ChefsLocalDataSource {
  ShowMenuLocalDataSourceImp({required SharedPreferences sharedPreferences})
      : super(sharedPreferences: sharedPreferences);
}
