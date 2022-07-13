import 'package:beitouti_users/features/current_subscriptions/domain/entities/current_subscription.dart';
import 'package:beitouti_users/features/current_subscriptions/domain/entities/current_subscription_order.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'current_subscriptions_state.g.dart';

abstract class CurrentSubscriptionsState
    implements
        Built<CurrentSubscriptionsState, CurrentSubscriptionsStateBuilder> {
  bool get isLoading;

  String get message;

  bool get error;

  BuiltList<CurrentSubscription> get subscriptions;

  BuiltList<CurrentSubscriptionOrder> get subscriptionOrders;

  CurrentSubscriptionsState._();

  factory CurrentSubscriptionsState(
          [Function(CurrentSubscriptionsStateBuilder b) updates]) =
      _$CurrentSubscriptionsState;

  factory CurrentSubscriptionsState.initial() {
    return CurrentSubscriptionsState(
      (b) => b
        ..isLoading = false
        ..message = ""
        ..subscriptions.replace([])
        ..subscriptionOrders.replace([])
        ..error = false,
    );
  }
}
