import 'package:beitouti_users/core/data/base_remote_datasource.dart';
import 'package:beitouti_users/features/current_subscriptions/data/models/current_subscription_model.dart';
import 'package:beitouti_users/features/current_subscriptions/data/models/current_subscription_order.dart';

abstract class CurrentSubscriptionsRemoteDataSource
    extends BaseRemoteDataSource {
  Future<List<CurrentSubscriptionModel>> getCurrentSubscriptions({
    required String token,
  });

  Future<List<CurrentSubscriptionOrderModel>> getSubscriptionOrders({
    required String token,
    required int subscriptionId,
  });
}
