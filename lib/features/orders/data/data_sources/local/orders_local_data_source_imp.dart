import 'package:beitouti_users/core/data/base_local_data_source.dart';
import 'package:beitouti_users/features/orders/data/data_sources/local/orders_local_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: OrdersLocalDataSource)
class OrdersLocalDataSourceImp extends BaseLocalDataSourceImpl
    implements OrdersLocalDataSource {
  OrdersLocalDataSourceImp({
    required SharedPreferences sharedPreferences,
  }) : super(sharedPreferences: sharedPreferences);
}
