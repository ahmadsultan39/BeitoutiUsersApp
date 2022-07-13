import 'package:beitouti_users/features/meal/domain/use_cases/add_meal_to_cart_use_case.dart';
import 'package:beitouti_users/features/meal/domain/use_cases/add_to_favourite_use_case.dart';
import 'package:beitouti_users/features/meal/domain/use_cases/get_meal_use_case.dart';
import 'package:beitouti_users/features/meal/domain/use_cases/remove_from_favourite_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/meal.dart';
import '../../domain/entities/meal_category.dart';
import '../../domain/entities/meal_chef.dart';
import 'meal.dart';

@injectable
class MealBloc extends Bloc<MealEvent, MealState> {
  final GetMealUseCase _getMealUseCase;
  final RemoveFromFavouriteUseCase _removeFromFavouriteUseCase;
  final AddToFavouriteUseCase _addToFavouriteUseCase;
  final AddMealToCartUseCase _addMealToCartUseCase;

  void clearMessage() {
    add(ClearMessage());
  }

  void addGetMealEvent(int mealId) {
    add(GetMeal((b) => b..mealId = mealId));
  }

  void addAddToFavouriteEvent(int mealId) {
    add(AddToFavourite((b) => b..mealId = mealId));
  }

  void addRemoveFromFavouriteEvent(int mealId) {
    add(RemoveFromFavourite((b) => b..mealId = mealId));
  }

  void addAddMealToCartEvent({
    required Meal meal,
    required int quantity,
    required String notes,
  }) {
    add(AddMealToCart(
      (b) => b
        ..meal = meal
        ..quantity = quantity
        ..notes = notes,
    ));
  }

  @factoryMethod
  MealBloc(
    this._getMealUseCase,
    this._removeFromFavouriteUseCase,
    this._addToFavouriteUseCase,
    this._addMealToCartUseCase,
  ) : super(MealState.initial()) {
    on<MealEvent>(
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

        /// *** GetMeal *** ///
        if (event is GetMeal) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _getMealUseCase(
            ParamsGetMealUseCase(mealId: event.mealId),
          );

          result.fold(
            (failure) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..message = failure.error
                  ..error = true,
              ),
            ),
            (meal) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..meal = meal,
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
                (b) => b..isLoading = false,
              ),
            ),
          );
        }

        /// *** AddToFavourite *** ///
        if (event is AddToFavourite) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _addToFavouriteUseCase(
            ParamsAddToFavouriteUseCase(
              mealId: event.mealId,
            ),
          );

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
                (b) => b..isLoading = false,
              ),
            ),
          );
        }

        /// *** AddMealToCart *** ///
        if (event is AddMealToCart) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _addMealToCartUseCase(
            ParamsAddMealToCartUseCase(
              meal: event.meal,
              notes: event.notes,
              quantity: event.quantity,
            ),
          );

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
                (b) => b..isLoading = false,
              ),
            ),
          );
        }
      },
    );
  }
}
