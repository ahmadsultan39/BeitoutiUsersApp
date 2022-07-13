import 'package:beitouti_users/core/data/base_repository.dart';
import 'package:beitouti_users/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/entities/order.dart';
import '../../../../core/entities/paginate_list.dart';

abstract class OrdersRepository extends BaseRepository {
  Future<Either<Failure, PaginateList<OrderEntity>>> getPreviousOrders({
    required int page,
  });

  Future<Either<Failure, void>> cancelOrder({
    required int orderId,
  });

  Future<Either<Failure, List<OrderEntity>>> getCurrentOrders();
}
