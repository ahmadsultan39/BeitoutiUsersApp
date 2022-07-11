import 'package:beitouti_users/features/meals/domain/entities/home_meal.dart';
import 'package:beitouti_users/features/meals/domain/repositories/meals_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';

@lazySingleton
class GetOfferedMealsUseCase implements UseCase<List<HomeMeal>, NoParams> {
  final MealsRepository _repository;

  GetOfferedMealsUseCase(this._repository);

  @override
  Future<Either<Failure, List<HomeMeal>>> call(NoParams params) {
    return _repository.getOfferedMeals();
  }
}
