import 'package:beitouti_users/core/data/base_remote_datasource.dart';
import 'package:beitouti_users/features/cart/data/models/cart_model.dart';

abstract class CartRemoteDataSource extends BaseRemoteDataSource {
  Future<void> orderCart({required CartModel cart,required String token});
}
