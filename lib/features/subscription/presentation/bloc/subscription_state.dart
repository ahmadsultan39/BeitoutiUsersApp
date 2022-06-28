import 'package:beitouti_users/features/subscription/domain/entities/subscription.dart';
import 'package:beitouti_users/features/subscription/domain/entities/subscription_meal.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'subscription_state.g.dart';

abstract class SubscriptionState
    implements Built<SubscriptionState, SubscriptionStateBuilder> {
  bool get isLoading;

  String get message;

  bool get error;

  BuiltList<SubscriptionMeal> get subscriptionMeals;

  Subscription? get subscription;

  SubscriptionState._();

  factory SubscriptionState([Function(SubscriptionStateBuilder b) updates]) =
      _$SubscriptionState;

  factory SubscriptionState.initial() {
    return SubscriptionState(
      (b) => b
        ..isLoading = false
        ..message = ""
        ..error = false
        ..subscription = null
        ..subscriptionMeals.replace([]),
    );
  }
}
