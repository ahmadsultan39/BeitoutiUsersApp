import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/order.dart';
import '../../../../core/entities/paginate_list.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/params/paginate_list_params.dart';
import 'package:beitouti_users/features/orders/domain/repositories/orders_repository.dart';
import '../../../../core/usecase/usecase.dart';

@lazySingleton
class GetPreviousOrdersUseCase
    implements UseCase<PaginateList<OrderEntity>, PaginateListParams> {
  final OrdersRepository _repository;

  GetPreviousOrdersUseCase(this._repository);

  @override
  Future<Either<Failure, PaginateList<OrderEntity>>> call(
      PaginateListParams params) {
    return _repository.getPreviousOrders(
      page: params.page,
    );
  }
}
