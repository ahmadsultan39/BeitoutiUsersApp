import 'package:beitouti_users/core/data/base_local_data_source.dart';
import '../../../../../core/models/cart_item_model.dart';

abstract class MealLocalDataSource extends BaseLocalDataSource {
  Future<void> addToCart(CartItemModel cartItemModel);

  // return true if the meals in the cart has the same chef id or if the cart is empty
  Future<bool> checkAddToCartAvailability({
    required int chefId,
  });

  // return 0 if meal dose not exist in the cart, or return the quantity of this meal in the cart
  Future<int> getCartMealQuantity({
    required int mealId,
  });

  Future<int> getAllCartMealsQuantity();
}
