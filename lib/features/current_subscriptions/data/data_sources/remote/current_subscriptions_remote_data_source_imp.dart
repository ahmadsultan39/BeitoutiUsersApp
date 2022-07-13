import 'package:beitouti_users/core/data/base_remote_datasource.dart';
import 'package:beitouti_users/core/util/constants.dart';
import 'package:beitouti_users/features/current_subscriptions/data/models/current_subscription_model.dart';
import 'package:beitouti_users/features/current_subscriptions/data/models/current_subscription_order.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'current_subscriptions_remote_data_source.dart';

@LazySingleton(as: CurrentSubscriptionsRemoteDataSource)
class CurrentSubscriptionsRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements CurrentSubscriptionsRemoteDataSource {
  CurrentSubscriptionsRemoteDataSourceImp({required Dio dio}) : super(dio: dio);

  @override
  Future<List<CurrentSubscriptionModel>> getCurrentSubscriptions({
    required String token,
  }) async =>
      await performGetListRequest<CurrentSubscriptionModel>(
        endpoint: Endpoints.currentSubscriptions,
        token: token,
      );

  @override
  Future<List<CurrentSubscriptionOrderModel>> getSubscriptionOrders({
    required String token,
    required int subscriptionId,
  }) async =>
      await performGetListRequest<CurrentSubscriptionOrderModel>(
        endpoint: Endpoints.subscriptionOrders(subscriptionId),
        token: token,
      );
}
