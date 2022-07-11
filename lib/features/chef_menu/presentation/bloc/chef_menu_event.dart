import 'package:built_value/built_value.dart';

part 'chef_menu_event.g.dart';

abstract class ChefMenuEvent {}

abstract class GetChefCategoriesEvent extends ChefMenuEvent
    implements Built<GetChefCategoriesEvent,GetChefCategoriesEventBuilder> {
  int get id;

  GetChefCategoriesEvent._();

  factory GetChefCategoriesEvent([Function(GetChefCategoriesEventBuilder b) updates]) =
  _$GetChefCategoriesEvent;

  factory GetChefCategoriesEvent.initial() {
    return GetChefCategoriesEvent((b) => b);
  }
}

abstract class GetChefCategoryMealsEvent extends ChefMenuEvent
    implements Built<GetChefCategoryMealsEvent,GetChefCategoryMealsEventBuilder> {
  int get chefId;
  int get categoryId;

  GetChefCategoryMealsEvent._();

  factory GetChefCategoryMealsEvent([Function(GetChefCategoryMealsEventBuilder b) updates]) =
  _$GetChefCategoryMealsEvent;

  factory GetChefCategoryMealsEvent.initial() {
    return GetChefCategoryMealsEvent((b) => b);
  }
}

abstract class GetChefInfoEvent extends ChefMenuEvent
    implements Built<GetChefInfoEvent,GetChefInfoEventBuilder> {
  int get id;

  GetChefInfoEvent._();

  factory GetChefInfoEvent([Function(GetChefInfoEventBuilder b) updates]) =
  _$GetChefInfoEvent;

  factory GetChefInfoEvent.initial() {
    return GetChefInfoEvent((b) => b);
  }
}

abstract class GetChefSubscriptionsEvent extends ChefMenuEvent
    implements Built<GetChefSubscriptionsEvent,GetChefSubscriptionsEventBuilder> {
  int get id;

  GetChefSubscriptionsEvent._();

  factory GetChefSubscriptionsEvent([Function(GetChefSubscriptionsEventBuilder b) updates]) =
  _$GetChefSubscriptionsEvent;

  factory GetChefSubscriptionsEvent.initial() {
    return GetChefSubscriptionsEvent((b) => b);
  }
}

abstract class GetChefSubscriptionMealsEvent extends ChefMenuEvent
    implements Built<GetChefSubscriptionMealsEvent,GetChefSubscriptionMealsEventBuilder> {
  int get id;

  GetChefSubscriptionMealsEvent._();

  factory GetChefSubscriptionMealsEvent([Function(GetChefSubscriptionMealsEventBuilder b) updates]) =
  _$GetChefSubscriptionMealsEvent;

  factory GetChefSubscriptionMealsEvent.initial() {
    return GetChefSubscriptionMealsEvent((b) => b);
  }
}

abstract class ClearMessage extends ChefMenuEvent
    implements Built<ClearMessage, ClearMessageBuilder> {

  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) = _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}