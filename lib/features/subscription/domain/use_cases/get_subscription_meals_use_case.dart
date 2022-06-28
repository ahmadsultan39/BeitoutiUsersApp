import 'package:beitouti_users/features/subscription/domain/entities/subscription.dart';
import 'package:beitouti_users/features/subscription/domain/entities/subscription_meal.dart';
import 'package:beitouti_users/features/subscription/domain/repositories/subscription_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';

@lazySingleton
class GetSubscriptionMealsUseCase
    implements
        UseCase<List<SubscriptionMeal>, ParamsGetSubscriptionMealsUseCase> {
  final SubscriptionRepository _repository;

  GetSubscriptionMealsUseCase(this._repository);

  @override
  Future<Either<Failure, List<SubscriptionMeal>>> call(
      ParamsGetSubscriptionMealsUseCase params) async {
    return await _repository.getSubscriptionMeals(
      params.subscriptionId,
    );
  }
}

class ParamsGetSubscriptionMealsUseCase extends Equatable {
  final int subscriptionId;

  const ParamsGetSubscriptionMealsUseCase({
    required this.subscriptionId,
  });

  @override
  List<Object?> get props => [subscriptionId];
}
