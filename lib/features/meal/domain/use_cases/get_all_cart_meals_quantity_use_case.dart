import 'package:beitouti_users/features/meal/domain/repositories/meal_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/meal.dart';

@lazySingleton
class GetAllCartMealsQuantityUseCase implements UseCase<int, NoParams> {
  final MealRepository _repository;

  GetAllCartMealsQuantityUseCase(this._repository);

  @override
  Future<Either<Failure, int>> call(
    NoParams params,
  ) async {
    return await _repository.getAllCartMealsQuantity();
  }
}
