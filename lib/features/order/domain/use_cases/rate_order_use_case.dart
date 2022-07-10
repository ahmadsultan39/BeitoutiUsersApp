import 'package:beitouti_users/core/entities/order.dart';
import 'package:beitouti_users/features/order/domain/repositories/order_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';

@lazySingleton
class GetOrderUseCase implements UseCase<OrderEntity, ParamsGetOrderUseCase> {
  final OrderRepository _repository;

  GetOrderUseCase(this._repository);

  @override
  Future<Either<Failure, OrderEntity>> call(
    ParamsGetOrderUseCase params,
  ) async {
    return await _repository.getOrder(orderId: params.orderId);
  }
}

class ParamsGetOrderUseCase extends Equatable {
  final int orderId;

  const ParamsGetOrderUseCase({
    required this.orderId,
  });

  @override
  List<Object?> get props => [orderId];
}
