import 'package:beitouti_users/features/chef_menu/data/data_sources/local/chef_menu_local_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/data/base_local_data_source.dart';

@LazySingleton(as: ChefMenuLocalDataSource)
class ChefMenuLocalDataSourceImp extends BaseLocalDataSourceImpl implements ChefMenuLocalDataSource {
  ChefMenuLocalDataSourceImp({required SharedPreferences sharedPreferences}) : super(sharedPreferences: sharedPreferences);

}