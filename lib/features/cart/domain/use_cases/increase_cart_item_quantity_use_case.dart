import 'package:beitouti_users/core/models/cart_item_model.dart';
import 'package:beitouti_users/features/cart/domain/repositories/cart_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';

@lazySingleton
class UpdateCartItemQuantityUseCase
    implements UseCase<void, ParamsUpdateCartItemQuantityUseCase> {
  final CartRepository _repository;

  UpdateCartItemQuantityUseCase(this._repository);

  @override
  Future<Either<Failure, void>> call(
      ParamsUpdateCartItemQuantityUseCase params) async {
    return await _repository.updateCartItemQuantity(
      id: params.id,
      quantity: params.quantity,
    );
  }
}

class ParamsUpdateCartItemQuantityUseCase extends Equatable {
  final int id;
  final int quantity;

  const ParamsUpdateCartItemQuantityUseCase({
    required this.id,
    required this.quantity,
  });

  @override
  List<Object?> get props => [id, quantity];
}
