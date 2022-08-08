import 'package:built_value/built_value.dart';

part 'profile_event.g.dart';

abstract class ProfileEvent {}

abstract class GetProfileEvent extends ProfileEvent
    implements Built<GetProfileEvent, GetProfileEventBuilder> {
  //getter fields

  GetProfileEvent._();

  factory GetProfileEvent([Function(GetProfileEventBuilder b) updates]) =
      _$GetProfileEvent;

  factory GetProfileEvent.initial() {
    return GetProfileEvent((b) => b);
  }
}

abstract class LogoutEvent extends ProfileEvent
    implements Built<LogoutEvent, LogoutEventBuilder> {
  //getter fields

  LogoutEvent._();

  factory LogoutEvent([Function(LogoutEventBuilder b) updates]) =
  _$LogoutEvent;

  factory LogoutEvent.initial() {
    return LogoutEvent((b) => b);
  }
}

abstract class ClearMessage extends ProfileEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  //getter fields

  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
  _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}


