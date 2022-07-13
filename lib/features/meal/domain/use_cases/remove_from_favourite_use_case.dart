import 'package:beitouti_users/features/meal/domain/repositories/meal_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/meal.dart';

@lazySingleton
class RemoveFromFavouriteUseCase implements UseCase<void, ParamsRemoveFromFavouriteUseCase> {
  final MealRepository _repository;

  RemoveFromFavouriteUseCase(this._repository);

  @override
  Future<Either<Failure, void>> call(ParamsRemoveFromFavouriteUseCase params) async {
    return await _repository.removeFromFavourite(params.mealId);
  }
}

class ParamsRemoveFromFavouriteUseCase extends Equatable {
  final int mealId;

  const ParamsRemoveFromFavouriteUseCase({
    required this.mealId,
  });

  @override
  List<Object?> get props => [mealId];
}
