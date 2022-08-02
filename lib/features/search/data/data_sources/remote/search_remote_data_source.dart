import '../../../../../core/data/base_remote_datasource.dart';
import '../../../../../core/network/models/paginate_response_model.dart';
import '../../models/search_chef_model.dart';
import '../../models/search_meal_model.dart';
import '../../models/search_subscription_model.dart';

abstract class SearchRemoteDataSource extends BaseRemoteDataSource {
  Future<PaginateResponseModel<SearchMealModel>> getMeals({
    required String token,
    required String query,
    required int page,
    String? priceSort,
    String? rateSort,
  });

  Future<PaginateResponseModel<SearchSubscriptionModel>> getSubscriptions({
    required String token,
    required String query,
    required int page,
    int? daysFilter,
  });

  Future<PaginateResponseModel<SearchChefModel>> getChefs({
    required String token,
    required String query,
    required int page,
  });
}
