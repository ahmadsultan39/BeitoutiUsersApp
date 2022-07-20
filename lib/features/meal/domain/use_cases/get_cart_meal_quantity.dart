import 'package:beitouti_users/features/meal/domain/repositories/meal_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/meal.dart';

@lazySingleton
class GetCartMealQuantityUseCase
    implements UseCase<int, ParamsGetCartMealQuantityUseCase> {
  final MealRepository _repository;

  GetCartMealQuantityUseCase(this._repository);

  @override
  Future<Either<Failure, int>> call(
    ParamsGetCartMealQuantityUseCase params,
  ) async {
    return await _repository.getCartMealQuantity(params.mealId);
  }
}

class ParamsGetCartMealQuantityUseCase extends Equatable {
  final int mealId;

  const ParamsGetCartMealQuantityUseCase({
    required this.mealId,
  });

  @override
  List<Object?> get props => [mealId];
}
