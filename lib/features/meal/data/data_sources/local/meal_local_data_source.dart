import 'package:beitouti_users/core/data/base_local_data_source.dart';
import '../../../../../core/models/cart_item_model.dart';

abstract class MealLocalDataSource extends BaseLocalDataSource {
  Future<void> addToCart(CartItemModel cartItemModel);
}
