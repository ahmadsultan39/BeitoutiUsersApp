import 'package:beitouti_users/features/meal/domain/repositories/meal_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/meal.dart';

@lazySingleton
class AddToFavouriteUseCase implements UseCase<void, ParamsAddToFavouriteUseCase> {
  final MealRepository _repository;

  AddToFavouriteUseCase(this._repository);

  @override
  Future<Either<Failure, void>> call(ParamsAddToFavouriteUseCase params) async {
    return await _repository.addToFavourite(params.mealId);
  }
}

class ParamsAddToFavouriteUseCase extends Equatable {
  final int mealId;

  const ParamsAddToFavouriteUseCase({
    required this.mealId,
  });

  @override
  List<Object?> get props => [mealId];
}
