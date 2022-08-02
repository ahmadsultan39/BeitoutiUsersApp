import 'dart:convert';

import 'package:beitouti_users/core/data/base_remote_datasource.dart';
import 'package:beitouti_users/core/models/order_model.dart';
import 'package:beitouti_users/core/util/constants.dart';
import 'package:beitouti_users/features/order/data/data_sources/remote/order_remote_data_source.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: OrderRemoteDataSource)
class OrderRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements OrderRemoteDataSource {
  OrderRemoteDataSourceImp({required Dio dio}) : super(dio: dio);

  @override
  Future<OrderModel> getOrder({
    required int orderId,
    required String token,
  }) async =>
      await performGetRequest<OrderModel>(
       endpoint: Endpoints.showOrder(orderId),
        token : token,
      );

  @override
  Future<void> rateOrder({
    required String notes,
    required String token,
    required int mealId,
    required int orderId,
    required int rate,
  }) async =>
      await performPostRequest<Null>(
        endpoint: Endpoints.rateOrder(orderId),
        data: jsonEncode(
          RequestBody.rateOrder(rate: rate, mealId: mealId, notes: notes),
        ),
        options: GetOptions.getOptionsWithToken(token),
      );

  @override
  Future<void> reportOrder({
    required int orderId,
    required String reason,
    required String token,
    required String reportedOn,
  }) async =>
      await performPostRequest<Null>(
        endpoint: Endpoints.reportOrder(orderId),
        data: RequestBody.reportOrder(reportedOn: reportedOn, reason: reason),
        options: GetOptions.getOptionsWithToken(token),
      );
}
