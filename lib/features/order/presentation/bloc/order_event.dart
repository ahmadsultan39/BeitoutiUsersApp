import 'package:built_value/built_value.dart';

part 'order_event.g.dart';

abstract class OrderEvent {}

abstract class RateOrder extends OrderEvent
    implements Built<RateOrder, RateOrderBuilder> {
  //getter fields

  int get orderId;

  int get mealId;

  int get rate;

  String get notes;

  RateOrder._();

  factory RateOrder([Function(RateOrderBuilder b) updates]) = _$RateOrder;

  factory RateOrder.initial() {
    return RateOrder((b) => b);
  }
}

abstract class ReportOrder extends OrderEvent
    implements Built<ReportOrder, ReportOrderBuilder> {
  //getter fields

  int get orderId;

  String get reason;

  String get reportedOn;

  ReportOrder._();

  factory ReportOrder([Function(ReportOrderBuilder b) updates]) = _$ReportOrder;

  factory ReportOrder.initial() {
    return ReportOrder((b) => b);
  }
}

abstract class GetOrder extends OrderEvent
    implements Built<GetOrder, GetOrderBuilder> {
  //getter fields

  int get orderId;

  GetOrder._();

  factory GetOrder([Function(GetOrderBuilder b) updates]) = _$GetOrder;

  factory GetOrder.initial() {
    return GetOrder((b) => b);
  }
}

abstract class CancelOrder extends OrderEvent
    implements Built<CancelOrder, CancelOrderBuilder> {
  //getter fields

  int get orderId;

  CancelOrder._();

  factory CancelOrder([Function(CancelOrderBuilder b) updates]) = _$CancelOrder;

  factory CancelOrder.initial() {
    return CancelOrder((b) => b);
  }
}

abstract class ClearMessage extends OrderEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  //getter fields

  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
      _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}
