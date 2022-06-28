import 'package:built_value/built_value.dart';

part 'subscription_event.g.dart';

abstract class SubscriptionEvent {}

abstract class Subscribe extends SubscriptionEvent
    implements Built<Subscribe, SubscribeBuilder> {
  //getter fields

  int get subscriptionId;

  String get notes;

  Subscribe._();

  factory Subscribe([Function(SubscribeBuilder b) updates]) = _$Subscribe;

  factory Subscribe.initial() {
    return Subscribe((b) => b);
  }
}

abstract class GetSubscription extends SubscriptionEvent
    implements Built<GetSubscription, GetSubscriptionBuilder> {
  //getter fields

  int get subscriptionId;

  GetSubscription._();

  factory GetSubscription([Function(GetSubscriptionBuilder b) updates]) =
      _$GetSubscription;

  factory GetSubscription.initial() {
    return GetSubscription((b) => b);
  }
}

abstract class GetSubscriptionMeals extends SubscriptionEvent
    implements Built<GetSubscriptionMeals, GetSubscriptionMealsBuilder> {
  //getter fields

  int get subscriptionId;

  GetSubscriptionMeals._();

  factory GetSubscriptionMeals(
          [Function(GetSubscriptionMealsBuilder b) updates]) =
      _$GetSubscriptionMeals;

  factory GetSubscriptionMeals.initial() {
    return GetSubscriptionMeals((b) => b);
  }
}

abstract class ClearMessage extends SubscriptionEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  //getter fields

  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
      _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}
