import 'package:beitouti_users/core/data/base_local_data_source.dart';
import 'package:beitouti_users/core/data/base_repository.dart';
import 'package:beitouti_users/core/error/failures.dart';
import 'package:beitouti_users/core/network/network_info.dart';
import 'package:beitouti_users/features/current_subscriptions/data/data_sources/local/current_subscriptions_local_data_source.dart';
import 'package:beitouti_users/features/current_subscriptions/data/data_sources/remote/current_subscriptions_remote_data_source.dart';
import 'package:beitouti_users/features/current_subscriptions/domain/entities/current_subscription.dart';
import 'package:beitouti_users/features/current_subscriptions/domain/entities/current_subscription_order.dart';
import 'package:beitouti_users/features/current_subscriptions/domain/repositories/current_subscriptions_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';

@LazySingleton(as: CurrentSubscriptionsRepository)
class CurrentSubscriptionsRepositoryImp extends BaseRepositoryImpl
    implements CurrentSubscriptionsRepository {
  final CurrentSubscriptionsLocalDataSource _local;
  final CurrentSubscriptionsRemoteDataSource _http;

  CurrentSubscriptionsRepositoryImp(
    this._local,
    this._http, {
    required BaseLocalDataSource baseLocalDataSource,
    required NetworkInfo networkInfo,
  }) : super(
          baseLocalDataSource: baseLocalDataSource,
          networkInfo: networkInfo,
        );

  @override
  Future<Either<Failure, List<CurrentSubscription>>>
      getCurrentSubscriptions() async {
    try {
      final token = await _local.token;
      final currentSubscriptions = await _http.getCurrentSubscriptions(
        token: token,
      );
      return Right(currentSubscriptions);
    } on HandledException catch (e) {
      return Left(ServerFailure(error: e.error));
    }
  }

  @override
  Future<Either<Failure, List<CurrentSubscriptionOrder>>> getSubscriptionOrders(
    int subscriptionId,
  ) async {
    try {
      final token = await _local.token;
      final currentSubscriptionOrders = await _http.getSubscriptionOrders(
        token: token,
        subscriptionId: subscriptionId,
      );
      return Right(currentSubscriptionOrders);
    } on HandledException catch (e) {
      return Left(ServerFailure(error: e.error));
    }
  }
}
