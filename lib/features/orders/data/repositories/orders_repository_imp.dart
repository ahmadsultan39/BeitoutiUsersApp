import 'package:beitouti_users/core/data/base_local_data_source.dart';
import 'package:beitouti_users/core/data/base_repository.dart';
import 'package:beitouti_users/core/entities/order.dart';
import 'package:beitouti_users/core/entities/paginate_list.dart';
import 'package:beitouti_users/core/error/failures.dart';
import 'package:beitouti_users/core/models/order_model.dart';
import 'package:beitouti_users/core/network/network_info.dart';
import 'package:beitouti_users/features/orders/data/data_sources/local/orders_local_data_source.dart';
import 'package:beitouti_users/features/orders/data/data_sources/remote/orders_remote_data_source.dart';
import 'package:beitouti_users/features/orders/domain/repositories/orders_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/exceptions.dart';

@LazySingleton(as: OrdersRepository)
class OrdersRepositoryImp extends BaseRepositoryImpl
    implements OrdersRepository {
  final OrdersRemoteDataSource _http;
  final OrdersLocalDataSource _local;

  OrdersRepositoryImp(
    this._http,
    this._local, {
    required BaseLocalDataSource baseLocalDataSource,
    required NetworkInfo networkInfo,
  }) : super(
          baseLocalDataSource: baseLocalDataSource,
          networkInfo: networkInfo,
        );

  @override
  Future<Either<Failure, void>> cancelOrder({
    required int orderId,
  }) async {
    try {
      final token = await _local.token;
      await _http.cancelOrder(token: token, orderId: orderId);
      return const Right(null);
    } on HandledException catch (e) {
      return Left(ServerFailure(error: e.error));
    }
  }

  @override
  Future<Either<Failure, List<OrderEntity>>> getCurrentOrders() async {
    try {
      final token = await _local.token;
      final currentOrders = await _http.getCurrentOrders(token: token);
      return Right(currentOrders);
    } on HandledException catch (e) {
      return Left(ServerFailure(error: e.error));
    }
  }

  @override
  Future<Either<Failure, PaginateList<OrderEntity>>> getPreviousOrders({
    required int page,
  }) async {
    try {
      final _token = await _local.token;
      final result = await _http.getPreviousOrders(
        token: _token,
        page: page,
      );

      final List<OrderEntity> list = [];
      for (OrderModel orderModel in result.data) {
        list.add(
          OrderModel(
            id: orderModel.id,
            notes: orderModel.notes,
            status: orderModel.status,
            subscriptionId: orderModel.subscriptionId,
            canBeCanceled: orderModel.canBeCanceled,
            canBeEvaluated: orderModel.canBeEvaluated,
            chefName: orderModel.chefName,
            chefImage: orderModel.chefImage,
            selectedDeliveryTime: orderModel.selectedDeliveryTime,
            createdAt: orderModel.createdAt,
            totalCost: orderModel.totalCost,
            deliveryFee: orderModel.deliveryFee,
            meals: orderModel.meals,
          ),
        );
      }

      return Right(
        PaginateList(
          total: result.total,
          pages: result.numPages,
          data: list,
        ),
      );
    } on HandledException catch (e) {
      return Left(ServerFailure(error: e.error));
    }
  }
}
