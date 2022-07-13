import 'package:beitouti_users/features/current_subscriptions/domain/entities/current_subscription.dart';
import 'package:beitouti_users/features/current_subscriptions/domain/repositories/current_subscriptions_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';

@lazySingleton
class GetCurrentSubscriptionsUseCase
    implements UseCase<List<CurrentSubscription>, NoParams> {
  final CurrentSubscriptionsRepository _repository;

  GetCurrentSubscriptionsUseCase(this._repository);

  @override
  Future<Either<Failure, List<CurrentSubscription>>> call(
      NoParams params) async {
    return await _repository.getCurrentSubscriptions();
  }
}

