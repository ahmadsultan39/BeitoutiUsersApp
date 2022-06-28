import 'package:beitouti_users/core/data/base_repository.dart';
import 'package:beitouti_users/core/error/exceptions.dart';
import 'package:beitouti_users/core/error/failures.dart';
import 'package:beitouti_users/core/models/cart_item_model.dart';
import 'package:beitouti_users/core/network/network_info.dart';
import 'package:beitouti_users/features/cart/data/data_sources/local/cart_local_data_source.dart';
import 'package:beitouti_users/features/cart/data/data_sources/remote/cart_remote_data_source.dart';
import 'package:beitouti_users/features/cart/data/models/cart_model.dart';
import 'package:beitouti_users/features/cart/domain/repositories/cart_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CartRepository)
class CartRepositoryImp extends BaseRepositoryImpl implements CartRepository {
  final CartRemoteDataSource _http;
  final CartLocalDataSource _local;

  CartRepositoryImp(
    this._http,
    this._local, {
    required NetworkInfo networkInfo,
  }) : super(
          baseLocalDataSource: _local,
          networkInfo: networkInfo,
        );

  @override
  Future<Either<Failure, List<CartItemModel>>> getCartItems() async {
    try {
      final cartItems = await _local.getCartItems();
      return Right(cartItems);
    } on CacheException catch (e) {
      return const Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, void>> orderCart(CartModel cart) async {
    try {
      final token = await _local.token;
      await _http.orderCart(cart: cart, token: token);
      return const Right(null);
    } on HandledException catch (e) {
      return Left(ServerFailure(error: e.error));
    }
  }
}
