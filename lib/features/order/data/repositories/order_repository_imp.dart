import 'package:beitouti_users/core/data/base_local_data_source.dart';
import 'package:beitouti_users/core/data/base_repository.dart';
import 'package:beitouti_users/core/entities/order.dart';
import 'package:beitouti_users/core/error/exceptions.dart';
import 'package:beitouti_users/core/error/failures.dart';
import 'package:beitouti_users/core/network/network_info.dart';
import 'package:beitouti_users/features/order/data/data_sources/local/order_local_data_source.dart';
import 'package:beitouti_users/features/order/data/data_sources/remote/order_remote_data_source.dart';
import 'package:beitouti_users/features/order/domain/repositories/order_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: OrderRepository)
class OrderRepositoryImp extends BaseRepositoryImpl implements OrderRepository {
  final OrderRemoteDataSource _http;
  final OrderLocalDataSource _local;

  OrderRepositoryImp(
    this._http,
    this._local, {
    required BaseLocalDataSource baseLocalDataSource,
    required NetworkInfo networkInfo,
  }) : super(
          baseLocalDataSource: baseLocalDataSource,
          networkInfo: networkInfo,
        );

  @override
  Future<Either<Failure, OrderEntity>> getOrder({
    required int orderId,
  }) async {
    try {
      final token = await _local.token;
      final order = await _http.getOrder(orderId: orderId, token: token);
      return Right(order);
    } on HandledException catch (e) {
      return Left(ServerFailure(error: e.error));
    }
  }

  @override
  Future<Either<Failure, void>> rateOrder({
    required String notes,
    required int mealId,
    required int orderId,
    required int rate,
  }) async {
    try {
      final token = await _local.token;
      await _http.rateOrder(
        orderId: orderId,
        token: token,
        mealId: mealId,
        notes: notes,
        rate: rate,
      );
      return const Right(null);
    } on HandledException catch (e) {
      return Left(ServerFailure(error: e.error));
    }
  }

  @override
  Future<Either<Failure, void>> reportOrder({
    required String reason,
    required String reportedOn,
    required int orderId,
  }) async {
    try {
      final token = await _local.token;
      await _http.reportOrder(
        token: token,
        orderId: orderId,
        reason: reason,
        reportedOn: reportedOn,
      );
      return const Right(null);
    } on HandledException catch (e) {
      return Left(ServerFailure(error: e.error));
    }
  }
}
