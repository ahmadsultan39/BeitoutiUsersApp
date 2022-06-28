import 'package:beitouti_users/core/data/base_remote_datasource.dart';
import 'package:beitouti_users/core/network/models/paginate_response_model.dart';
import 'package:beitouti_users/features/meals/data/models/home_meal_model.dart';
import '../../models/home_subscribe_model.dart';

abstract class MealsRemoteDataSource extends BaseRemoteDataSource {
  Future<List<HomeMealModel>> getTopRatedMeals({
    required String token,
  });

  Future<List<HomeMealModel>> getOfferedMeals({
    required String token,
  });

  Future<List<HomeMealModel>> getRecentMeals({
    required String token,
  });

  Future<List<HomeMealModel>> getTopOrderedMeals({
    required String token,
  });

  Future<List<HomeSubscribeModel>> getTopSubscriptions({
    required String token,
  });

  Future<PaginateResponseModel<HomeMealModel>> getAllOfferedMeals({
    required String token,
    required int page,
  });

  Future<PaginateResponseModel<HomeSubscribeModel>> getAllSubscriptions({
    required String token,
    required int page,
  });
}
