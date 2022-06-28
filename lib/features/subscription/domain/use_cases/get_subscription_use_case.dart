import 'package:beitouti_users/features/subscription/domain/repositories/subscription_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/subscription.dart';

@lazySingleton
class GetSubscriptionUseCase
    implements UseCase<Subscription, ParamsGetSubscriptionUseCase> {
  final SubscriptionRepository _repository;

  GetSubscriptionUseCase(this._repository);

  @override
  Future<Either<Failure, Subscription>> call(
      ParamsGetSubscriptionUseCase params) async {
    return await _repository.getSubscription(
      params.subscriptionId,
    );
  }
}

class ParamsGetSubscriptionUseCase extends Equatable {
  final int subscriptionId;

  const ParamsGetSubscriptionUseCase({
    required this.subscriptionId,
  });

  @override
  List<Object?> get props => [subscriptionId];
}
