
import 'package:built_value/built_value.dart';

part 'search_event.g.dart';

abstract class SearchEvent {}


abstract class ClearMessage extends SearchEvent
    implements Built<ClearMessage, ClearMessageBuilder> {

  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
  _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}

abstract class GetMealsEvent extends SearchEvent
    implements Built<GetMealsEvent, GetMealsEventBuilder> {
  String get query;
  int get page;
  String? get sortPrice;
  String? get sortRate;

  GetMealsEvent._();

  factory GetMealsEvent([Function(GetMealsEventBuilder b) updates]) = _$GetMealsEvent;

  factory GetMealsEvent.initial() {
    return GetMealsEvent((b) => b);
  }
}

abstract class SortMealsByPriceEvent extends SearchEvent
    implements Built<SortMealsByPriceEvent, SortMealsByPriceEventBuilder> {
  String get sortOrder;

  SortMealsByPriceEvent._();

  factory SortMealsByPriceEvent([Function(SortMealsByPriceEventBuilder b) updates]) = _$SortMealsByPriceEvent;

  factory SortMealsByPriceEvent.initial() {
    return SortMealsByPriceEvent((b) => b);
  }
}

abstract class SortMealsByRateEvent extends SearchEvent
    implements Built<SortMealsByRateEvent, SortMealsByRateEventBuilder> {
  String get sortOrder;

  SortMealsByRateEvent._();

  factory SortMealsByRateEvent([Function(SortMealsByRateEventBuilder b) updates]) = _$SortMealsByRateEvent;

  factory SortMealsByRateEvent.initial() {
    return SortMealsByRateEvent((b) => b);
  }
}

abstract class GetSubscriptionsEvent extends SearchEvent
    implements Built<GetSubscriptionsEvent, GetSubscriptionsEventBuilder> {
  String get query;
  int get page;
  int? get filterDays;

  GetSubscriptionsEvent._();

  factory GetSubscriptionsEvent([Function(GetSubscriptionsEventBuilder b) updates]) = _$GetSubscriptionsEvent;

  factory GetSubscriptionsEvent.initial() {
    return GetSubscriptionsEvent((b) => b);
  }
}


abstract class FilterSubscriptionsByDaysEvent extends SearchEvent
    implements Built<FilterSubscriptionsByDaysEvent, FilterSubscriptionsByDaysEventBuilder> {
  int get filterDays;

  FilterSubscriptionsByDaysEvent._();

  factory FilterSubscriptionsByDaysEvent([Function(FilterSubscriptionsByDaysEventBuilder b) updates]) = _$FilterSubscriptionsByDaysEvent;

  factory FilterSubscriptionsByDaysEvent.initial() {
    return FilterSubscriptionsByDaysEvent((b) => b);
  }
}

abstract class GetChefsEvent extends SearchEvent
    implements Built<GetChefsEvent, GetChefsEventBuilder> {
  String get query;
  int get page;

  GetChefsEvent._();

  factory GetChefsEvent([Function(GetChefsEventBuilder b) updates]) = _$GetChefsEvent;

  factory GetChefsEvent.initial() {
    return GetChefsEvent((b) => b);
  }
}