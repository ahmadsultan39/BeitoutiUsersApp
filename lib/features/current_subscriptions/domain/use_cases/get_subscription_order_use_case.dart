import 'package:beitouti_users/features/current_subscriptions/domain/repositories/current_subscriptions_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/current_subscription_order.dart';

@lazySingleton
class GetSubscriptionOrdersUseCase
    implements
        UseCase<List<CurrentSubscriptionOrder>,
            ParamsGetSubscriptionOrdersUseCase> {
  final CurrentSubscriptionsRepository _repository;

  GetSubscriptionOrdersUseCase(this._repository);

  @override
  Future<Either<Failure, List<CurrentSubscriptionOrder>>> call(
      ParamsGetSubscriptionOrdersUseCase params) async {
    return _repository.getSubscriptionOrders(
      params.subscriptionId,
    );
  }
}

class ParamsGetSubscriptionOrdersUseCase extends Equatable {
  final int subscriptionId;

  const ParamsGetSubscriptionOrdersUseCase({
    required this.subscriptionId,
  });

  @override
  List<Object?> get props => [subscriptionId];
}
