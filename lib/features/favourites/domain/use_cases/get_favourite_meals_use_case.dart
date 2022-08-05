import 'package:beitouti_users/features/favourites/domain/entities/favourite_meal.dart';
import 'package:beitouti_users/features/favourites/domain/repositories/favourites_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';

@lazySingleton
class GetFavouriteMealsUseCase
    implements UseCase<List<FavouriteMeal>, NoParams> {
  final FavouritesRepository _repository;

  GetFavouriteMealsUseCase(this._repository);

  @override
  Future<Either<Failure, List<FavouriteMeal>>> call(NoParams params) async {
    return await _repository.getFavouriteMeals();
  }
}
