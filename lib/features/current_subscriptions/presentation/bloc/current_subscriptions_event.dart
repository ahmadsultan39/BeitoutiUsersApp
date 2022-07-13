import 'package:built_value/built_value.dart';

part 'current_subscriptions_event.g.dart';

abstract class CurrentSubscriptionsEvent {}

abstract class GetCurrentSubscriptions extends CurrentSubscriptionsEvent
    implements Built<GetCurrentSubscriptions, GetCurrentSubscriptionsBuilder> {
  //getter fields

  GetCurrentSubscriptions._();

  factory GetCurrentSubscriptions(
          [Function(GetCurrentSubscriptionsBuilder b) updates]) =
      _$GetCurrentSubscriptions;

  factory GetCurrentSubscriptions.initial() {
    return GetCurrentSubscriptions((b) => b);
  }
}

abstract class GetSubscriptionOrders extends CurrentSubscriptionsEvent
    implements Built<GetSubscriptionOrders, GetSubscriptionOrdersBuilder> {
  //getter fields

  int get subscriptionId;

  GetSubscriptionOrders._();

  factory GetSubscriptionOrders(
          [Function(GetSubscriptionOrdersBuilder b) updates]) =
      _$GetSubscriptionOrders;

  factory GetSubscriptionOrders.initial() {
    return GetSubscriptionOrders((b) => b);
  }
}

abstract class CancelOrder extends CurrentSubscriptionsEvent
    implements Built<CancelOrder, CancelOrderBuilder> {
  //getter fields

  int get orderId;

  CancelOrder._();

  factory CancelOrder([Function(CancelOrderBuilder b) updates]) = _$CancelOrder;

  factory CancelOrder.initial() {
    return CancelOrder((b) => b);
  }
}

abstract class ClearSubscriptionOrders extends CurrentSubscriptionsEvent
    implements Built<ClearSubscriptionOrders, ClearSubscriptionOrdersBuilder> {
//getter fields

ClearSubscriptionOrders._();

  factory ClearSubscriptionOrders([Function(ClearSubscriptionOrdersBuilder b) updates]) =
      _$ClearSubscriptionOrders;

  factory ClearSubscriptionOrders.initial() {
    return ClearSubscriptionOrders((b) => b);
  }
}

abstract class ClearMessage extends CurrentSubscriptionsEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  //getter fields

  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
  _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}

