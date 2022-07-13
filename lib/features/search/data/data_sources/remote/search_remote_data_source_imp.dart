import 'package:beitouti_users/features/search/data/data_sources/remote/search_remote_data_source.dart';
import 'package:beitouti_users/features/search/data/models/search_chef_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_remote_datasource.dart';
import '../../../../../core/network/models/paginate_response_model.dart';
import '../../../../../core/util/constants.dart';
import '../../models/search_meal_model.dart';
import '../../models/search_subscription_model.dart';

@LazySingleton(as: SearchRemoteDataSource)
class SearchRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements SearchRemoteDataSource {
  SearchRemoteDataSourceImp({required Dio dio}) : super(dio: dio);

  @override
  Future<PaginateResponseModel<SearchMealModel>> getMeals(
      {required String token,
        required String query,
        required int page}) async =>
      await performGetRequest<PaginateResponseModel<SearchMealModel>>(
           Endpoints.searchMeals(query,page),
           token,);

  @override
  Future<PaginateResponseModel<SearchSubscriptionModel>> getSubscriptions(
      {required String token,
        required String query,
        required int page}) async =>
      await performGetRequest<PaginateResponseModel<SearchSubscriptionModel>>(
            Endpoints.searchSubscriptions(query,page),
           token,);

  @override
  Future<PaginateResponseModel<SearchChefModel>> getChefs(
      {required String token,
        required String query,
        required int page}) async =>
      await performGetRequest<PaginateResponseModel<SearchChefModel>>(
           Endpoints.searchChefs(query,page),
           token,);
}