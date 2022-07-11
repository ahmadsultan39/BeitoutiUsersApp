import 'package:beitouti_users/core/data/base_remote_datasource.dart';
import 'package:beitouti_users/core/util/constants.dart';
import 'package:beitouti_users/features/meals/data/data_sources/remote/meals_remote_data_source.dart';
import 'package:beitouti_users/features/meals/data/models/home_meal_model.dart';
import 'package:beitouti_users/features/meals/data/models/home_subscribe_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: MealsRemoteDataSource)
class MealsRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements MealsRemoteDataSource {
  MealsRemoteDataSourceImp({required Dio dio}) : super(dio: dio);

  @override
  Future<List<HomeMealModel>> getOfferedMeals({required String token}) =>
      performGetListRequest(endpoint: Endpoints.offeredMeals, token: token);

  @override
  Future<List<HomeMealModel>> getRecentMeals({required String token}) =>
      performGetListRequest(endpoint: Endpoints.recentMeals, token: token);

  @override
  Future<List<HomeMealModel>> getTopOrderedMeals({required String token}) =>
      performGetListRequest(endpoint: Endpoints.topOrderedMeals, token: token);

  @override
  Future<List<HomeMealModel>> getTopRatedMeals({required String token}) =>
      performGetListRequest(endpoint: Endpoints.topRatedMeals, token: token);

  @override
  Future<List<HomeSubscribeModel>> getTopSubscriptions(
          {required String token}) =>
      performGetListRequest(endpoint: Endpoints.topSubscriptions, token: token);
}
