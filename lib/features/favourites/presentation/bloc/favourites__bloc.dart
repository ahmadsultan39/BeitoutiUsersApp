import 'package:beitouti_users/core/usecase/usecase.dart';
import 'package:beitouti_users/features/favourites/domain/use_cases/get_favourite_meals_use_case.dart';
import 'package:beitouti_users/features/meal/domain/use_cases/remove_from_favourite_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import 'favourites.dart';

@injectable
class FavouritesBloc extends Bloc<FavouritesEvent, FavouritesState> {
  final GetFavouriteMealsUseCase _getFavouriteMealsUseCase;
  final RemoveFromFavouriteUseCase _removeFromFavouriteUseCase;

  void clearMessage() {
    add(ClearMessage());
  }

  void addRemoveFromFavouriteEvent(int mealId) {
    add(RemoveFromFavourite((b) => b..mealId = mealId));
  }

  void addGetFavouriteMealsEvent() {
    add(GetFavouriteMeal());
  }

  @factoryMethod
  FavouritesBloc(
    this._getFavouriteMealsUseCase,
    this._removeFromFavouriteUseCase,
  ) : super(FavouritesState.initial()) {
    on<FavouritesEvent>(
      (event, emit) async {
        /// *** ClearMessage *** ///
        if (event is ClearMessage) {
          emit(
            state.rebuild(
              (b) => b
                ..error = false
                ..message = '',
            ),
          );
        }

        /// *** GetFavouriteMeal *** ///
        if (event is GetFavouriteMeal) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _getFavouriteMealsUseCase(NoParams());

          result.fold(
            (failure) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..error = true
                  ..message = failure.error,
              ),
            ),
            (favourites) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..favourites.replace(favourites),
              ),
            ),
          );
        }

        /// *** RemoveFromFavourite *** ///
        if (event is RemoveFromFavourite) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _removeFromFavouriteUseCase(
              ParamsRemoveFromFavouriteUseCase(mealId: event.mealId));

          result.fold(
            (failure) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..message = failure.error
                  ..error = true,
              ),
            ),
            (success) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..favourites.removeWhere((meal) => meal.id == event.mealId)
                  ..message = 'تم حذف الوجبة من المفضلة بنجاح',
              ),
            ),
          );
        }
      },
    );
  }
}
