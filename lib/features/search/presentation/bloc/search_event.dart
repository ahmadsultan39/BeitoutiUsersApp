
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

  GetMealsEvent._();

  factory GetMealsEvent([Function(GetMealsEventBuilder b) updates]) = _$GetMealsEvent;

  factory GetMealsEvent.initial() {
    return GetMealsEvent((b) => b);
  }
}

abstract class GetSubscriptionsEvent extends SearchEvent
    implements Built<GetSubscriptionsEvent, GetSubscriptionsEventBuilder> {
  String get query;
  int get page;

  GetSubscriptionsEvent._();

  factory GetSubscriptionsEvent([Function(GetSubscriptionsEventBuilder b) updates]) = _$GetSubscriptionsEvent;

  factory GetSubscriptionsEvent.initial() {
    return GetSubscriptionsEvent((b) => b);
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