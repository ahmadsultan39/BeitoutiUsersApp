import 'package:built_value/built_value.dart';

part 'meals_event.g.dart';

abstract class MealsEvent {}

abstract class GetOfferedMeals extends MealsEvent
    implements Built<GetOfferedMeals, GetOfferedMealsBuilder> {
  //getter fields

  GetOfferedMeals._();

  factory GetOfferedMeals([Function(GetOfferedMealsBuilder b) updates]) =
      _$GetOfferedMeals;

  factory GetOfferedMeals.initial() {
    return GetOfferedMeals((b) => b);
  }
}

abstract class GetTopRatedMeals extends MealsEvent
    implements Built<GetTopRatedMeals, GetTopRatedMealsBuilder> {
  //getter fields

  GetTopRatedMeals._();

  factory GetTopRatedMeals([Function(GetTopRatedMealsBuilder b) updates]) =
      _$GetTopRatedMeals;

  factory GetTopRatedMeals.initial() {
    return GetTopRatedMeals((b) => b);
  }
}

abstract class GetTopOrderedMeals extends MealsEvent
    implements Built<GetTopOrderedMeals, GetTopOrderedMealsBuilder> {
  //getter fields

  GetTopOrderedMeals._();

  factory GetTopOrderedMeals([Function(GetTopOrderedMealsBuilder b) updates]) =
      _$GetTopOrderedMeals;

  factory GetTopOrderedMeals.initial() {
    return GetTopOrderedMeals((b) => b);
  }
}

abstract class GetRecentMeals extends MealsEvent
    implements Built<GetRecentMeals, GetRecentMealsBuilder> {
  //getter fields

  GetRecentMeals._();

  factory GetRecentMeals([Function(GetRecentMealsBuilder b) updates]) =
      _$GetRecentMeals;

  factory GetRecentMeals.initial() {
    return GetRecentMeals((b) => b);
  }
}

abstract class GetTopSubscriptions extends MealsEvent
    implements Built<GetTopSubscriptions, GetTopSubscriptionsBuilder> {
  //getter fields

  GetTopSubscriptions._();

  factory GetTopSubscriptions(
      [Function(GetTopSubscriptionsBuilder b) updates]) = _$GetTopSubscriptions;

  factory GetTopSubscriptions.initial() {
    return GetTopSubscriptions((b) => b);
  }
}

abstract class ClearMessage extends MealsEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  //getter fields

  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
      _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}
