import 'package:beitouti_users/features/search/domain/entities/search_meal.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/paginate_list.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/search_repository.dart';

@lazySingleton
class SearchMealsUseCase implements UseCase<PaginateList<SearchMeal>, ParamsSearchMealsUseCase> {
  final SearchRepo searchRepo;

  SearchMealsUseCase(this.searchRepo);

  @override
  Future<Either<Failure, PaginateList<SearchMeal>>> call(ParamsSearchMealsUseCase params) async {
    return await searchRepo.getMeals(params.query,params.page);
  }
}

class ParamsSearchMealsUseCase extends Equatable {
  final String query;
  final int page;

  const ParamsSearchMealsUseCase( {required this.query,required this.page}) : super();

  @override
  List<Object?> get props => [query,page];
}