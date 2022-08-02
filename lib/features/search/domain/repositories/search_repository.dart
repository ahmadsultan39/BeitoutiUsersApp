
import 'package:beitouti_users/features/search/domain/entities/search_chef.dart';
import 'package:beitouti_users/features/search/domain/entities/search_meal.dart';
import 'package:beitouti_users/features/search/domain/entities/search_subscription.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/entities/paginate_list.dart';
import '../../../../core/error/failures.dart';

abstract class SearchRepo {
  Future<Either<Failure,PaginateList<SearchMeal>>> getMeals(String query,int page,String? priceSort,String? rateSort);
  Future<Either<Failure,PaginateList<SearchSubscription>>> getSubscriptions(String query,int page,int? daysFilter);
  Future<Either<Failure,PaginateList<SearchChef>>> getChefs(String query,int page);
}