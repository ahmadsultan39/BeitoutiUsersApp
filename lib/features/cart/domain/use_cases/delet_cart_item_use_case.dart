import 'package:beitouti_users/core/models/cart_item_model.dart';
import 'package:beitouti_users/features/cart/domain/repositories/cart_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';

@lazySingleton
class GetCartItemsUseCase implements UseCase<List<CartItemModel>, NoParams> {
  final CartRepository _repository;

  GetCartItemsUseCase(this._repository);

  @override
  Future<Either<Failure, List<CartItemModel>>> call(NoParams params) async {
    return await _repository.getCartItems();
  }
}
