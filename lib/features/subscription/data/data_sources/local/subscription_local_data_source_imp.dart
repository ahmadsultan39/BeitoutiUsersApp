import 'package:beitouti_users/core/data/base_local_data_source.dart';
import 'package:beitouti_users/features/subscription/data/data_sources/local/subscription_local_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: SubscriptionLocalDataSource)
class SubscriptionLocalDataSourceImp extends BaseLocalDataSourceImpl
    implements SubscriptionLocalDataSource {
  SubscriptionLocalDataSourceImp({
    required SharedPreferences sharedPreferences,
  }) : super(
          sharedPreferences: sharedPreferences,
        );
}
