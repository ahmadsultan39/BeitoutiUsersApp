import 'package:beitouti_users/core/data/base_local_data_source.dart';
import 'package:beitouti_users/core/error/exceptions.dart';
import 'package:beitouti_users/core/models/cart_item_model.dart';
import 'package:beitouti_users/features/meal/data/data_sources/local/meal_local_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/databases/cart_database.dart';

@LazySingleton(as: MealLocalDataSource)
class MealLocalDataSourceImp extends BaseLocalDataSourceImpl
    implements MealLocalDataSource {
  MealLocalDataSourceImp({
    required SharedPreferences sharedPreferences,
    required this.cartDataBaseManager,
  }) : super(sharedPreferences: sharedPreferences);

  final CartDataBaseManager cartDataBaseManager;

  @override
  Future<void> addToCart(CartItemModel cartItemModel) async {
    try {
      await cartDataBaseManager.addToCart(cartItemModel);
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<bool> checkAddToCartAvailability({
    required int chefId,
  }) async {
    try {
      return await cartDataBaseManager.checkAddToCartAvailability(
        chefId: chefId,
      );
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<int> getCartMealQuantity({
    required int mealId,
  }) async {
    try {
      return await cartDataBaseManager.getCartMealQuantity(mealId: mealId);
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<int> getAllCartMealsQuantity() async {
    try {
      return await cartDataBaseManager.getAllMealsQuantity();
    } catch (e) {
      throw CacheException();
    }
  }
}
