import 'package:beitouti_users/core/data/base_remote_datasource.dart';
import '../../../../../core/models/order_model.dart';
import '../../../../../core/network/models/paginate_response_model.dart';

abstract class OrdersRemoteDataSource extends BaseRemoteDataSource {
  Future<void> cancelOrder({
    required String token,
    required int orderId,
  });

  Future<List<OrderModel>> getCurrentOrders({
    required String token,
  });

  Future<PaginateResponseModel<OrderModel>> getPreviousOrders({
    required String token,
    required int page,
  });
}
