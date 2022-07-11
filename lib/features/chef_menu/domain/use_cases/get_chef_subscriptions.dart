import 'package:beitouti_users/features/chef_menu/domain/entities/subscription.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/chef_menu_repository.dart';

@lazySingleton
class GetChefSubscriptionsUseCase
    implements UseCase<List<Subscription>, ParamsGetChefSubscriptionsUseCase> {
  final ChefMenuRepository _repository;

  GetChefSubscriptionsUseCase(this._repository);

  @override
  Future<Either<Failure, List<Subscription>>> call(ParamsGetChefSubscriptionsUseCase params) {
    return _repository.getChefSubscriptions(
      id: params.id,
    );
  }
}

class ParamsGetChefSubscriptionsUseCase extends Equatable {
  final int id;

  const ParamsGetChefSubscriptionsUseCase({
    required this.id,
  });

  @override
  List<Object?> get props => [id];
}