import 'package:built_value/built_value.dart';

part 'favourites__event.g.dart';

abstract class FavouritesEvent {}

abstract class GetFavouriteMeal extends FavouritesEvent
    implements Built<GetFavouriteMeal, GetFavouriteMealBuilder> {
  //getter fields

  GetFavouriteMeal._();

  factory GetFavouriteMeal([Function(GetFavouriteMealBuilder b) updates]) =
      _$GetFavouriteMeal;

  factory GetFavouriteMeal.initial() {
    return GetFavouriteMeal((b) => b);
  }
}


abstract class RemoveFromFavourite extends FavouritesEvent
    implements Built<RemoveFromFavourite, RemoveFromFavouriteBuilder> {
  //getter fields

  int get mealId;

  RemoveFromFavourite._();

  factory RemoveFromFavourite(
      [Function(RemoveFromFavouriteBuilder b) updates]) = _$RemoveFromFavourite;

  factory RemoveFromFavourite.initial() {
    return RemoveFromFavourite((b) => b);
  }
}

abstract class ClearMessage extends FavouritesEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  //getter fields

  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
      _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}
