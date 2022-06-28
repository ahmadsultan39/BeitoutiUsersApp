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
