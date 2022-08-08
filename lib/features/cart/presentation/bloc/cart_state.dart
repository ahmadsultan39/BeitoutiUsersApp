import 'package:beitouti_users/core/models/cart_item_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'cart_state.g.dart';

abstract class CartState implements Built<CartState, CartStateBuilder> {
  bool get isLoading;

  String get message;

  bool get error;

  bool get allSuccess;

  BuiltList<CartItemModel> get cartItems;

  int get mealsCost;

  int get deliveryFee;

  CartState._();

  factory CartState([Function(CartStateBuilder b) updates]) = _$CartState;

  factory CartState.initial() {
    return CartState(
      (b) => b
        ..allSuccess = false
        ..isLoading = false
        ..message = ""
        ..deliveryFee = 0
        ..mealsCost = 0
        ..cartItems.replace([])
        ..error = false,
    );
  }
}
