import 'package:beitouti_users/features/meals/domain/entities/home_meal.dart';
import 'package:beitouti_users/features/meals/domain/entities/home_subscribe.dart';
import 'package:beitouti_users/features/meals/domain/repositories/meals_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';

@lazySingleton
class GetTopSubscriptionsUseCase
    implements UseCase<List<HomeSubscribe>, NoParams> {
  final MealsRepository _repository;

  GetTopSubscriptionsUseCase(this._repository);

  @override
  Future<Either<Failure, List<HomeSubscribe>>> call(NoParams params) {
    return _repository.getTopSubscriptions();
  }
}
