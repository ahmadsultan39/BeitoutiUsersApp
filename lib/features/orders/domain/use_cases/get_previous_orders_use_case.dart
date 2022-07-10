import 'package:beitouti_users/features/meals/domain/entities/home_meal.dart';
import 'package:beitouti_users/features/meals/domain/repositories/meals_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/paginate_list.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/params/paginate_list_params.dart';
import '../../../../core/usecase/usecase.dart';

@lazySingleton
class GetAllOfferedMealsUseCase
    implements UseCase<PaginateList<HomeMeal>, PaginateListParams> {
  final MealsRepository _repository;

  GetAllOfferedMealsUseCase(this._repository);

  @override
  Future<Either<Failure, PaginateList<HomeMeal>>> call(
      PaginateListParams params) {
    return _repository.getAllOfferedMeals(
      params.page,
    );
  }
}
