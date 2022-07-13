import 'package:beitouti_users/core/data/base_repository.dart';
import 'package:beitouti_users/core/error/failures.dart';
import 'package:beitouti_users/features/current_subscriptions/domain/entities/current_subscription.dart';
import 'package:beitouti_users/features/current_subscriptions/domain/entities/current_subscription_order.dart';
import 'package:dartz/dartz.dart';

abstract class CurrentSubscriptionsRepository extends BaseRepository {
  Future<Either<Failure, List<CurrentSubscription>>> getCurrentSubscriptions();

  Future<Either<Failure, List<CurrentSubscriptionOrder>>> getSubscriptionOrders(
    int subscriptionId,
  );
}
