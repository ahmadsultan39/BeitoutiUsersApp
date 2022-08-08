import 'package:beitouti_users/features/search/domain/entities/search_meal.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/paginate_list.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/search_repository.dart';

@lazySingleton
class SearchMealsUseCase
    implements UseCase<PaginateList<SearchMeal>, ParamsSearchMealsUseCase> {
  final SearchRepo searchRepo;

  SearchMealsUseCase(this.searchRepo);

  @override
  Future<Either<Failure, PaginateList<SearchMeal>>> call(
      ParamsSearchMealsUseCase params) async {
    return await searchRepo.getMeals(
        params.query, params.page, params.priceSort, params.rateSort);
  }
}

class ParamsSearchMealsUseCase extends Equatable {
  final String query;
  final int page;
  String? priceSort;
  String? rateSort;

  ParamsSearchMealsUseCase(
      {required this.query, required this.page, this.priceSort, this.rateSort})
      : super();

  @override
  List<Object?> get props => [query, page];
}
