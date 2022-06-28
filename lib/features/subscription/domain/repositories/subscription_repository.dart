import 'package:beitouti_users/core/data/base_repository.dart';
import 'package:beitouti_users/core/error/failures.dart';
import 'package:beitouti_users/features/subscription/domain/entities/subscription.dart';
import 'package:beitouti_users/features/subscription/domain/entities/subscription_meal.dart';
import 'package:dartz/dartz.dart';

abstract class SubscriptionRepository extends BaseRepository {
  Future<Either<Failure, Subscription>> getSubscription(
    int subscriptionId,
  );

  Future<Either<Failure, List<SubscriptionMeal>>> getSubscriptionMeals(
    int subscriptionId,
  );

  Future<Either<Failure, void>> subscribe({
    required int subscriptionId,
    required String notes,
  });
}
