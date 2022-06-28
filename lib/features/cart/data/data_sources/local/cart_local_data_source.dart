import 'package:beitouti_users/core/models/cart_item_model.dart';

import '../../../../../core/data/base_local_data_source.dart';

abstract class CartLocalDataSource extends BaseLocalDataSource {
  Future<List<CartItemModel>> getCartItems();

  Future<void> removeCartItem(int cartItemId);

  Future<void> increaseCartItemQuantityByOne(int cartItemId);

  Future<void> decreaseCartItemQuantityByOne(int cartItemId);
}
