import 'package:beitouti_users/core/util/constants.dart';
import 'package:beitouti_users/features/meal/data/models/meal_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_remote_datasource.dart';
import 'meal_remote_data_source.dart';

@LazySingleton(as: MealRemoteDataSource)
class MealRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements MealRemoteDataSource {
  MealRemoteDataSourceImp({required Dio dio}) : super(dio: dio);

  @override
  Future<MealModel> getMeal({
    required String token,
    required int mealId,
  }) =>
      performGetRequest<MealModel>(
        endpoint: Endpoints.showMeal(mealId),
        token: token,
      );

  @override
  Future<void> addToFavourite({
    required String token,
    required int mealId,
  }) async =>
      performPostRequest<Null>(
        endpoint: Endpoints.addToFavourite(mealId),
        options: GetOptions.getOptionsWithToken(token),
      );

  @override
  Future<void> removeFromFavourite({
    required String token,
    required int mealId,
  }) async =>
      performDeleteRequest<Null>(
        endpoint: Endpoints.removeFromFavourite(mealId),
        options: GetOptions.getOptionsWithToken(token),
      );
}
