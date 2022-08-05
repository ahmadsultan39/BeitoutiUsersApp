import 'package:beitouti_users/features/favourites/domain/entities/favourite_meal.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'favourites__state.g.dart';

abstract class FavouritesState
    implements Built<FavouritesState, FavouritesStateBuilder> {
  bool get isLoading;

  String get message;

  bool get error;

  BuiltList<FavouriteMeal> get favourites;

  FavouritesState._();

  factory FavouritesState([Function(FavouritesStateBuilder b) updates]) =
      _$FavouritesState;

  factory FavouritesState.initial() {
    return FavouritesState(
      (b) => b
        ..isLoading = false
        ..message = ""
        ..error = false
        ..favourites.replace([]),
    );
  }
}
