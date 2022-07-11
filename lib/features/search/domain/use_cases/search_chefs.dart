import 'package:beitouti_users/features/search/domain/entities/search_chef.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/paginate_list.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/search_repository.dart';

@lazySingleton
class SearchChefsUseCase implements UseCase<PaginateList<SearchChef>, ParamsSearchChefsUseCase> {
  final SearchRepo searchRepo;

  SearchChefsUseCase(this.searchRepo);

  @override
  Future<Either<Failure, PaginateList<SearchChef>>> call(ParamsSearchChefsUseCase params) async {
    return await searchRepo.getChefs(params.query,params.page);
  }
}

class ParamsSearchChefsUseCase extends Equatable {
  final String query;
  final int page;

  const ParamsSearchChefsUseCase( {required this.query,required this.page}) : super();

  @override
  List<Object?> get props => [query,page];
}