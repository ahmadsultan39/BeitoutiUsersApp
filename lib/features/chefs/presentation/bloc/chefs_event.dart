
import 'package:built_value/built_value.dart';
part 'chefs_event.g.dart';

abstract class ChefsEvent {}

abstract class GetNearestChefsEvent extends ChefsEvent
    implements Built<GetNearestChefsEvent, GetNearestChefsEventBuilder> {
  GetNearestChefsEvent._();

  factory GetNearestChefsEvent([Function(GetNearestChefsEventBuilder b) updates]) =
  _$GetNearestChefsEvent;

  factory GetNearestChefsEvent.initial() {
    return GetNearestChefsEvent((b) => b);
  }
}

abstract class GetTopRatedChefsEvent extends ChefsEvent
    implements Built<GetTopRatedChefsEvent, GetTopRatedChefsEventBuilder> {
  GetTopRatedChefsEvent._();

  factory GetTopRatedChefsEvent([Function(GetTopRatedChefsEventBuilder b) updates]) =
  _$GetTopRatedChefsEvent;

  factory GetTopRatedChefsEvent.initial() {
    return GetTopRatedChefsEvent((b) => b);
  }
}

abstract class GetTopOrderedChefsEvent extends ChefsEvent
    implements Built<GetTopOrderedChefsEvent, GetTopOrderedChefsEventBuilder> {
  GetTopOrderedChefsEvent._();

  factory GetTopOrderedChefsEvent([Function(GetTopOrderedChefsEventBuilder b) updates]) =
  _$GetTopOrderedChefsEvent;

  factory GetTopOrderedChefsEvent.initial() {
    return GetTopOrderedChefsEvent((b) => b);
  }
}

abstract class GetMostRecentChefsEvent extends ChefsEvent
    implements Built<GetMostRecentChefsEvent, GetMostRecentChefsEventBuilder> {
  GetMostRecentChefsEvent._();

  factory GetMostRecentChefsEvent([Function(GetMostRecentChefsEventBuilder b) updates]) =
  _$GetMostRecentChefsEvent;

  factory GetMostRecentChefsEvent.initial() {
    return GetMostRecentChefsEvent((b) => b);
  }
}

abstract class ClearMessage extends ChefsEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) = _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}