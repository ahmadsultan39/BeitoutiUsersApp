import 'package:built_value/built_value.dart';

part 'orders_event.g.dart';

abstract class OrdersEvent {}

abstract class GetCurrentOrders extends OrdersEvent
    implements Built<GetCurrentOrders, GetCurrentOrdersBuilder> {
  //getter fields

  GetCurrentOrders._();

  factory GetCurrentOrders([Function(GetCurrentOrdersBuilder b) updates]) =
      _$GetCurrentOrders;

  factory GetCurrentOrders.initial() {
    return GetCurrentOrders((b) => b);
  }
}

abstract class GetPreviousOrders extends OrdersEvent
    implements Built<GetPreviousOrders, GetPreviousOrdersBuilder> {
  //getter fields

  int get page;

  GetPreviousOrders._();

  factory GetPreviousOrders([Function(GetPreviousOrdersBuilder b) updates]) =
      _$GetPreviousOrders;

  factory GetPreviousOrders.initial() {
    return GetPreviousOrders((b) => b);
  }
}

abstract class CancelOrder extends OrdersEvent
    implements Built<CancelOrder, CancelOrderBuilder> {
  //getter fields

  int get orderId;

  int get orderIndex;

  CancelOrder._();

  factory CancelOrder([Function(CancelOrderBuilder b) updates]) = _$CancelOrder;

  factory CancelOrder.initial() {
    return CancelOrder((b) => b);
  }
}

abstract class ClearMessage extends OrdersEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  //getter fields

  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
      _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}
