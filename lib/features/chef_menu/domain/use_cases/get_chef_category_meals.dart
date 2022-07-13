import 'package:beitouti_users/features/chef_menu/domain/entities/chef_meal.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/chef_menu_repository.dart';

@lazySingleton
class GetChefCategoryMealsUseCase
    implements UseCase<List<ChefMeal>, ParamsGetChefCategoryMealsUseCase> {
  final ChefMenuRepository _repository;

  GetChefCategoryMealsUseCase(this._repository);

  @override
  Future<Either<Failure, List<ChefMeal>>> call(ParamsGetChefCategoryMealsUseCase params) {
    return _repository.getChefCategoryMeals(
      chefId: params.chefId,
      categoryId: params.categoryId,
    );
  }
}

class ParamsGetChefCategoryMealsUseCase extends Equatable {
  final int chefId;
  final int categoryId;

  const ParamsGetChefCategoryMealsUseCase({
    required this.chefId,
    required this.categoryId,
  });

  @override
  List<Object?> get props => [chefId,categoryId];
}