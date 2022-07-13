import 'package:beitouti_users/core/data/base_local_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'current_subscriptions_local_data_source.dart';

@LazySingleton(as: CurrentSubscriptionsLocalDataSource)
class CurrentSubscriptionsLocalDataSourceImp extends BaseLocalDataSourceImpl
    implements CurrentSubscriptionsLocalDataSource {
  CurrentSubscriptionsLocalDataSourceImp({
    required SharedPreferences sharedPreferences,
  }) : super(sharedPreferences: sharedPreferences);
}
