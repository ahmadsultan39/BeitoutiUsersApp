import 'package:beitouti_users/core/data/base_local_data_source.dart';
import 'package:beitouti_users/core/data/base_repository.dart';
import 'package:beitouti_users/core/error/exceptions.dart';
import 'package:beitouti_users/core/error/failures.dart';
import 'package:beitouti_users/core/network/network_info.dart';
import 'package:beitouti_users/features/subscription/data/data_sources/local/subscription_local_data_source.dart';
import 'package:beitouti_users/features/subscription/data/data_sources/remote/subscription_remote_data_source.dart';
import 'package:beitouti_users/features/subscription/domain/entities/subscription.dart';
import 'package:beitouti_users/features/subscription/domain/entities/subscription_meal.dart';
import 'package:beitouti_users/features/subscription/domain/repositories/subscription_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SubscriptionRepository)
class SubscriptionRepositoryImp extends BaseRepositoryImpl
    implements SubscriptionRepository {
  final SubscriptionLocalDataSource _local;
  final SubscriptionRemoteDataSource _http;

  SubscriptionRepositoryImp(
    this._local,
    this._http, {
    required BaseLocalDataSource baseLocalDataSource,
    required NetworkInfo networkInfo,
  }) : super(baseLocalDataSource: _local, networkInfo: networkInfo);

  @override
  Future<Either<Failure, Subscription>> getSubscription(
    int subscriptionId,
  ) async {
    try {
      final token = await _local.token;
      final subscription = await _http.getSubscription(
        subscriptionId: subscriptionId,
        token: token,
      );
      return Right(subscription);
    } on HandledException catch (e) {
      return Left(
        ServerFailure(error: e.error),
      );
    }
  }

  @override
  Future<Either<Failure, List<SubscriptionMeal>>> getSubscriptionMeals(
    int subscriptionId,
  ) async {
    try {
      final token = await _local.token;
      final subscriptionMeals = await _http.getSubscriptionMeals(
        subscriptionId: subscriptionId,
        token: token,
      );
      return Right(subscriptionMeals);
    } on HandledException catch (e) {
      return Left(
        ServerFailure(error: e.error),
      );
    }
  }

  @override
  Future<Either<Failure, void>> subscribe({
    required int subscriptionId,
    required String notes,
  }) async {
    try {
      final token = await _local.token;
      await _http.subscribe(
        subscriptionId: subscriptionId,
        notes: notes,
        token: token,
      );
      return const Right(null);
    } on HandledException catch (e) {
      return Left(
        ServerFailure(error: e.error),
      );
    }
  }
}
