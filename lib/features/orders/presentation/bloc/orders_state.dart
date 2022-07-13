import 'package:beitouti_users/core/entities/order.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'orders_state.g.dart';

abstract class OrdersState implements Built<OrdersState, OrdersStateBuilder> {
  bool get isLoading;

  String get message;

  bool get error;

  BuiltList<OrderEntity> get currentOrders;

  BuiltList<OrderEntity> get previousOrders;

  bool get isPreviousOrdersLoading;

  bool get isPreviousOrdersPaginateLoading;

  bool get isPreviousOrdersFinished;

  int get previousOrdersPage;

  OrdersState._();

  factory OrdersState([Function(OrdersStateBuilder b) updates]) = _$OrdersState;

  factory OrdersState.initial() {
    return OrdersState(
      (b) => b
        ..currentOrders.replace([])
        ..previousOrders.replace([])
        ..isPreviousOrdersLoading = false
        ..isPreviousOrdersPaginateLoading = false
        ..isPreviousOrdersFinished = false
        ..previousOrdersPage = 1
        ..isLoading = false
        ..message = ""
        ..error = false,
    );
  }
}
