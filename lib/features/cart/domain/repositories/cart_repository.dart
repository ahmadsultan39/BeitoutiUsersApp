import 'package:beitouti_users/core/data/base_repository.dart';
import 'package:beitouti_users/core/error/failures.dart';
import 'package:beitouti_users/core/models/cart_item_model.dart';
import 'package:dartz/dartz.dart';
import '../../data/models/cart_model.dart';

abstract class CartRepository extends BaseRepository {
  Future<Either<Failure, List<CartItemModel>>> getCartItems();

  Future<Either<Failure, void>> orderCart(CartModel cart);
}
