import 'package:beitouti_users/features/subscription/domain/repositories/subscription_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';

@lazySingleton
class SubscribeUseCase implements UseCase<void, ParamsSubscribeUseCase> {
  final SubscriptionRepository _repository;

  SubscribeUseCase(this._repository);

  @override
  Future<Either<Failure, void>> call(ParamsSubscribeUseCase params) async {
    return await _repository.subscribe(
      subscriptionId: params.subscriptionId,
      notes: params.notes,
    );
  }
}

class ParamsSubscribeUseCase extends Equatable {
  final int subscriptionId;
  final String notes;

  const ParamsSubscribeUseCase({
    required this.subscriptionId,
    required this.notes,
  });

  @override
  List<Object?> get props => [subscriptionId];
}
