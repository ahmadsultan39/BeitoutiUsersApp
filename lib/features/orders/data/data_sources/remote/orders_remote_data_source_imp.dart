import 'package:beitouti_users/core/data/base_remote_datasource.dart';
import 'package:beitouti_users/core/models/order_model.dart';
import 'package:beitouti_users/core/network/models/paginate_response_model.dart';
import 'package:beitouti_users/features/orders/data/data_sources/remote/orders_remote_data_source.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/util/constants.dart';

@LazySingleton(as: OrdersRemoteDataSource)
class OrdersRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements OrdersRemoteDataSource {
  OrdersRemoteDataSourceImp({required Dio dio}) : super(dio: dio);

  @override
  Future<void> cancelOrder({
    required String token,
    required int orderId,
  }) async =>
      await performPutRequest<Null>(
        endpoint: Endpoints.cancelOrder(orderId),
        options: GetOptions.getOptionsWithToken(token),
      );

  @override
  Future<List<OrderModel>> getCurrentOrders({
    required String token,
  }) async =>
      await performGetListRequest<OrderModel>(
        endpoint: Endpoints.currentOrders,
        token: token,
      );

  @override
  Future<PaginateResponseModel<OrderModel>> getPreviousOrders({
    required String token,
    required int page,
  }) async =>
      await performGetRequest<PaginateResponseModel<OrderModel>>(
        endpoint: Endpoints.previousOrders(page),
        token: token,
      );
}
