import 'package:beitouti_users/core/data/base_local_data_source.dart';
import 'package:beitouti_users/core/databases/cart_database.dart';
import 'package:beitouti_users/core/error/exceptions.dart';
import 'package:beitouti_users/features/cart/data/data_sources/local/cart_local_data_source.dart';
import 'package:beitouti_users/core/models/cart_item_model.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: CartLocalDataSource)
class CartLocalDataSourceImp extends BaseLocalDataSourceImpl
    implements CartLocalDataSource {
  CartLocalDataSourceImp({
    required SharedPreferences sharedPreferences,
    required this.cartDataBaseManager,
  }) : super(sharedPreferences: sharedPreferences);

  final CartDataBaseManager cartDataBaseManager;

  @override
  Future<List<CartItemModel>> getCartItems() async {
    try {
      return await cartDataBaseManager.getCart();
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> updateCartItemQuantity({
    required int id,
    required int quantity,
  }) async {
    try {
      await cartDataBaseManager.updateCartItemQuantity(
        id: id,
        quantity: quantity,
      );
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> removeCartItem(int cartItemId) async {
    try {
      await cartDataBaseManager.removeCartItem(cartItemId);
    } catch (e) {
      throw CacheException();
    }
  }
}
