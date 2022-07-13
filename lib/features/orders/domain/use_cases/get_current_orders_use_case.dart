import 'package:beitouti_users/features/orders/domain/repositories/orders_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/order.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';

@lazySingleton
class GetCurrentOrdersUseCase implements UseCase<List<OrderEntity>, NoParams> {
  final OrdersRepository _repository;

  GetCurrentOrdersUseCase(this._repository);

  @override
  Future<Either<Failure, List<OrderEntity>>> call(NoParams params) async {
    return await _repository.getCurrentOrders();
  }
}
