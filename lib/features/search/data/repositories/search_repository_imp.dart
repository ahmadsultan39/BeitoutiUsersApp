import 'package:beitouti_users/features/search/domain/entities/search_chef.dart';
import 'package:beitouti_users/features/search/domain/entities/search_meal.dart';
import 'package:beitouti_users/features/search/domain/entities/search_subscription.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/paginate_list.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/repositories/search_repository.dart';
import '../data_sources/local/search_local_data_source.dart';
import '../data_sources/remote/search_remote_data_source.dart';

@LazySingleton(as: SearchRepo)
class SearchRepoImp extends SearchRepo {

  final SearchLocalDataSource _local;
  final SearchRemoteDataSource _remote;

  SearchRepoImp(this._local, this._remote);

  @override
  Future<Either<Failure, PaginateList<SearchMeal>>> getMeals(String query,int page,String? priceSort,String? rateSort) async {
    try {
      final token = await _local.token;
      final result = await _remote.getMeals(
        token: token,
        query: query,
        page : page,
        priceSort: priceSort,
        rateSort: rateSort,
      );

      return Right(PaginateList(
        data: result.data,
        pages: result.numPages,
        total: result.count,
      ));
    } on HandledException catch (e) {
      return Left(ServerFailure(error: e.error));
    } catch (e) {
      debugPrint('Error in new search repo $e');
      return const Left(ServerFailure());
    }
  }
  @override
  Future<Either<Failure, PaginateList<SearchSubscription>>> getSubscriptions(String query,int page,int? daysFilter) async {
    try {
      final token = await _local.token;
      final result = await _remote.getSubscriptions(
        token: token,
        query: query,
        page : page,
          daysFilter : daysFilter,
      );

      return Right(PaginateList(
        data: result.data,
        pages: result.numPages,
        total: result.count,
      ));
    } on HandledException catch (e) {
      return Left(ServerFailure(error: e.error));
    } catch (e) {
      debugPrint('Error in new search repo $e');
      return const Left(ServerFailure());
    }
  }
  @override
  Future<Either<Failure, PaginateList<SearchChef>>> getChefs(String query,int page) async {
    try {
      final token = await _local.token;
      final result = await _remote.getChefs(
        token: token,
        query: query,
        page : page,
      );

      return Right(PaginateList(
        data: result.data,
        pages: result.numPages,
        total: result.count,
      ));
    } on HandledException catch (e) {
      return Left(ServerFailure(error: e.error));
    } catch (e) {
      debugPrint('Error in new search repo $e');
      return const Left(ServerFailure());
    }
  }
}
