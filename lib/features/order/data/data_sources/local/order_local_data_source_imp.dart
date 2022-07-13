import 'package:beitouti_users/core/data/base_local_data_source.dart';
import 'package:beitouti_users/features/order/data/data_sources/local/order_local_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: OrderLocalDataSource)
class OrderLocalDataSourceImp extends BaseLocalDataSourceImpl
    implements OrderLocalDataSource {
  OrderLocalDataSourceImp({required SharedPreferences sharedPreferences})
      : super(sharedPreferences: sharedPreferences);
}
