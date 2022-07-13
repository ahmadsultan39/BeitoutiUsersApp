import 'package:beitouti_users/core/data/base_repository.dart';
import 'package:beitouti_users/core/entities/order.dart';
import 'package:beitouti_users/core/error/failures.dart';
import 'package:dartz/dartz.dart';

abstract class OrderRepository extends BaseRepository {
  Future<Either<Failure, void>> reportOrder({
    required int orderId,
    required String reason,
    required String reportedOn,
  });

  Future<Either<Failure, void>> rateOrder({
    required String notes,
    required int mealId,
    required int orderId,
    required int rate,
  });

  Future<Either<Failure, OrderEntity>> getOrder({
    required int orderId,
  });
}
