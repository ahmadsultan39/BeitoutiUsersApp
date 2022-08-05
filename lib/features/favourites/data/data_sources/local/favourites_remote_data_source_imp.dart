import 'package:beitouti_users/core/data/base_local_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'favourites_local_data_source.dart';

@LazySingleton(as: FavouritesLocalDataSource)
class FavouritesLocalDataSourceImp extends BaseLocalDataSourceImpl
    implements FavouritesLocalDataSource {
  FavouritesLocalDataSourceImp({
    required SharedPreferences sharedPreferences,
  }) : super(sharedPreferences: sharedPreferences);
}
