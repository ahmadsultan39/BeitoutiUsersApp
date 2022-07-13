import 'package:beitouti_users/core/data/base_remote_datasource.dart';
import 'package:beitouti_users/core/models/order_model.dart';

abstract class OrderRemoteDataSource extends BaseRemoteDataSource {
  Future<OrderModel> getOrder({
    required int orderId,
    required String token,
  });

  Future<void> rateOrder({
    required String notes,
    required String token,
    required int mealId,
    required int orderId,
    required int rate,
  });

  Future<void> reportOrder({
    required int orderId,
    required String reason,
    required String token,
    required String reportedOn,
  });
}
