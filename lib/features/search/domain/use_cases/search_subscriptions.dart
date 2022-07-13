import 'package:beitouti_users/features/search/domain/entities/search_subscription.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/paginate_list.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/search_repository.dart';

@lazySingleton
class SearchSubscriptionsUseCase implements UseCase<PaginateList<SearchSubscription>, ParamsSearchSubscriptionsUseCase> {
  final SearchRepo searchRepo;

  SearchSubscriptionsUseCase(this.searchRepo);

  @override
  Future<Either<Failure, PaginateList<SearchSubscription>>> call(ParamsSearchSubscriptionsUseCase params) async {
    return await searchRepo.getSubscriptions(params.query,params.page);
  }
}

class ParamsSearchSubscriptionsUseCase extends Equatable {
  final String query;
  final int page;

  const ParamsSearchSubscriptionsUseCase( {required this.query,required this.page}) : super();

  @override
  List<Object?> get props => [query,page];
}