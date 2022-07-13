import 'package:beitouti_users/features/orders/domain/repositories/orders_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';

@lazySingleton
class CancelOrderUseCase implements UseCase<void, ParamsCancelOrderUseCase> {
  final OrdersRepository _repository;

  CancelOrderUseCase(this._repository);

  @override
  Future<Either<Failure, void>> call(ParamsCancelOrderUseCase params) async {
    return await _repository.cancelOrder(orderId: params.orderId);
  }
}

class ParamsCancelOrderUseCase extends Equatable {
  final int orderId;

  const ParamsCancelOrderUseCase({required this.orderId});

  @override
  List<Object?> get props => [orderId];
}
