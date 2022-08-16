import 'package:beitouti_users/features/cart/data/models/cart_model.dart';
import 'package:built_value/built_value.dart';

part 'cart_event.g.dart';

abstract class CartEvent {}

abstract class GetCartItems extends CartEvent
    implements Built<GetCartItems, GetCartItemsBuilder> {
  //getter fields

  GetCartItems._();

  factory GetCartItems([Function(GetCartItemsBuilder b) updates]) =
      _$GetCartItems;

  factory GetCartItems.initial() {
    return GetCartItems((b) => b);
  }
}

abstract class IncreaseQuantity extends CartEvent
    implements Built<IncreaseQuantity, IncreaseQuantityBuilder> {
  //getter fields

  int get cartItemIndex;

  int get cartItemId;

  int get currentQuantity;

  IncreaseQuantity._();

  factory IncreaseQuantity([Function(IncreaseQuantityBuilder b) updates]) =
      _$IncreaseQuantity;

  factory IncreaseQuantity.initial() {
    return IncreaseQuantity((b) => b);
  }
}

abstract class OrderCart extends CartEvent
    implements Built<OrderCart, OrderCartBuilder> {
  //getter fields

  CartModel get cart;

  OrderCart._();

  factory OrderCart([Function(OrderCartBuilder b) updates]) = _$OrderCart;

  factory OrderCart.initial() {
    return OrderCart((b) => b);
  }
}

abstract class DecreaseQuantity extends CartEvent
    implements Built<DecreaseQuantity, DecreaseQuantityBuilder> {
  //getter fields

  int get cartItemIndex;

  int get cartItemId;

  int get currentQuantity;

  DecreaseQuantity._();

  factory DecreaseQuantity([Function(DecreaseQuantityBuilder b) updates]) =
      _$DecreaseQuantity;

  factory DecreaseQuantity.initial() {
    return DecreaseQuantity((b) => b);
  }
}

abstract class GetCartMealQuantity extends CartEvent
    implements Built<GetCartMealQuantity, GetCartMealQuantityBuilder> {
  //getter fields

  int get mealId;

  GetCartMealQuantity._();

  factory GetCartMealQuantity(
      [Function(GetCartMealQuantityBuilder b) updates]) = _$GetCartMealQuantity;

  factory GetCartMealQuantity.initial() {
    return GetCartMealQuantity((b) => b);
  }
}

abstract class DeleteCartItem extends CartEvent
    implements Built<DeleteCartItem, DeleteCartItemBuilder> {
  //getter fields

  int get id;

  DeleteCartItem._();

  factory DeleteCartItem([Function(DeleteCartItemBuilder b) updates]) =
      _$DeleteCartItem;

  factory DeleteCartItem.initial() {
    return DeleteCartItem((b) => b);
  }
}

abstract class GetCartAllMealsQuantity extends CartEvent
    implements Built<GetCartAllMealsQuantity, GetCartAllMealsQuantityBuilder> {
  //getter fields

  GetCartAllMealsQuantity._();

  factory GetCartAllMealsQuantity(
          [Function(GetCartAllMealsQuantityBuilder b) updates]) =
      _$GetCartAllMealsQuantity;

  factory GetCartAllMealsQuantity.initial() {
    return GetCartAllMealsQuantity((b) => b);
  }
}

abstract class DeleteCart extends CartEvent
    implements Built<DeleteCart, DeleteCartBuilder> {
  //getter fields

  DeleteCart._();

  factory DeleteCart([Function(DeleteCartBuilder b) updates]) =
      _$DeleteCart;

  factory DeleteCart.initial() {
    return DeleteCart((b) => b);
  }
}

abstract class ReInitState extends CartEvent
    implements Built<ReInitState, ReInitStateBuilder> {
  //getter fields

  ReInitState._();

  factory ReInitState([Function(ReInitStateBuilder b) updates]) =
  _$ReInitState;

  factory ReInitState.initial() {
    return ReInitState((b) => b);
  }
}

abstract class ClearMessage extends CartEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  //getter fields

  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
  _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}



