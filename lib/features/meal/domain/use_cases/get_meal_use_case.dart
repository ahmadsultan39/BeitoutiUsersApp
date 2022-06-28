import 'package:beitouti_users/features/meal/domain/repositories/meal_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/meal.dart';

@lazySingleton
class GetMealUseCase implements UseCase<Meal, ParamsGetMealUseCase> {
  final MealRepository _repository;

  GetMealUseCase(this._repository);

  @override
  Future<Either<Failure, Meal>> call(ParamsGetMealUseCase params) async {
    return await _repository.getMeal(params.mealId);
  }
}

class ParamsGetMealUseCase extends Equatable {
  final int mealId;

  const ParamsGetMealUseCase({
    required this.mealId,
  });

  @override
  List<Object?> get props => [mealId];
}
