import 'package:beitouti_users/core/models/cart_item_model.dart';
import 'package:beitouti_users/features/cart/data/models/cart_model.dart';
import 'package:beitouti_users/features/cart/domain/repositories/cart_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';

@lazySingleton
class OrderCartUseCase implements UseCase<void, ParamsOrderCartUseCase> {
  final CartRepository _repository;

  OrderCartUseCase(this._repository);

  @override
  Future<Either<Failure, void>> call(ParamsOrderCartUseCase params) async {
    return await _repository.orderCart(params.cart);
  }
}

class ParamsOrderCartUseCase extends Equatable {
  final CartModel cart;

  const ParamsOrderCartUseCase({required this.cart});

  @override
  List<Object?> get props => [cart];
}
