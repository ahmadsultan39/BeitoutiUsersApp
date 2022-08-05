import 'package:beitouti_users/core/data/base_remote_datasource.dart';
import 'package:beitouti_users/core/util/constants.dart';
import 'package:beitouti_users/features/favourites/data/data_sources/remote/favourites_remote_data_source.dart';
import 'package:beitouti_users/features/favourites/data/models/favourite_meal_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: FavouritesRemoteDataSource)
class FavouritesRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements FavouritesRemoteDataSource {
  FavouritesRemoteDataSourceImp({required Dio dio}) : super(dio: dio);

  @override
  Future<List<FavouriteMealModel>> getFavouriteMeals({
    required String token,
  }) async =>
      await performGetListRequest<FavouriteMealModel>(
        endpoint: Endpoints.favourites,
        token: token,
      );
}
