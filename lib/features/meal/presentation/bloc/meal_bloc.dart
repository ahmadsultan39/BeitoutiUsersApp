import 'package:beitouti_users/core/usecase/usecase.dart';
import 'package:beitouti_users/features/meal/domain/use_cases/add_meal_to_cart_use_case.dart';
import 'package:beitouti_users/features/meal/domain/use_cases/add_to_favourite_use_case.dart';
import 'package:beitouti_users/features/meal/domain/use_cases/check_add_to_cart_availability_use_case.dart';
import 'package:beitouti_users/features/meal/domain/use_cases/get_all_cart_meals_quantity_use_case.dart';
import 'package:beitouti_users/features/meal/domain/use_cases/get_cart_meal_quantity.dart';
import 'package:beitouti_users/features/meal/domain/use_cases/get_meal_use_case.dart';
import 'package:beitouti_users/features/meal/domain/use_cases/remove_from_favourite_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/meal.dart';
import 'meal.dart';

@injectable
class MealBloc extends Bloc<MealEvent, MealState> {
  final GetMealUseCase _getMealUseCase;
  final RemoveFromFavouriteUseCase _removeFromFavouriteUseCase;
  final CheckAddToCartAvailabilityUseCase _checkAddToCartAvailabilityUseCase;
  final GetAllCartMealsQuantityUseCase _getAllCartMealsQuantityUseCase;
  final GetCartMealQuantityUseCase _getCartMealQuantityUseCase;
  final AddToFavouriteUseCase _addToFavouriteUseCase;
  final AddMealToCartUseCase _addMealToCartUseCase;

  void clearMessage() {
    add(ClearMessage());
  }

  void addGetMealEvent(int mealId) {
    add(GetMeal((b) => b..mealId = mealId));
  }

  void addCheckAddToCartAvailabilityEvent(int chefId) {
    add(CheckAddToCartAvailability((b) => b..chefId = chefId));
  }

  void addAddToFavouriteEvent(int mealId) {
    add(AddToFavourite((b) => b..mealId = mealId));
  }

  void addRemoveFromFavouriteEvent(int mealId) {
    add(RemoveFromFavourite((b) => b..mealId = mealId));
  }

  void addGetAllCartMealsQuantityEvent() {
    add(GetAllCartMealsQuantity());
  }

  void addGetCartMealQuantity(int mealId) {
    add(GetCartMealQuantity((b) => b..mealId = mealId));
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
    this._checkAddToCartAvailabilityUseCase,
    this._getAllCartMealsQuantityUseCase,
    this._getCartMealQuantityUseCase,
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

        /// *** CheckAddToCartAvailability *** ///
        if (event is CheckAddToCartAvailability) {
          final result = await _checkAddToCartAvailabilityUseCase(
            ParamsCheckAddToCartAvailabilityUseCase(chefId: event.chefId),
          );

          // TODO check handle error for this
          result.fold(
            (failure) => emit(
              state.rebuild(
                (b) => b
                  ..message = failure.error
                  ..error = true,
              ),
            ),
            (isCartAvailable) => emit(
              state.rebuild(
                (b) => b..isCartAvailable = isCartAvailable,
              ),
            ),
          );
        }

        /// *** GetAllCartMealsQuantity *** ///
        if (event is GetAllCartMealsQuantity) {
          final result = await _getAllCartMealsQuantityUseCase(NoParams());

          // TODO check handle error for this
          result.fold(
            (failure) => emit(
              state.rebuild(
                (b) => b
                  ..message = failure.error
                  ..error = true,
              ),
            ),
            (allMealsQuantity) => emit(
              state.rebuild(
                (b) => b..allCartMealsQuantity = allMealsQuantity,
              ),
            ),
          );
        }

        /// *** GetCartMealQuantity *** ///
        if (event is GetCartMealQuantity) {
          final result = await _getCartMealQuantityUseCase(
            ParamsGetCartMealQuantityUseCase(mealId: event.mealId),
          );

          // TODO check handle error for this
          result.fold(
            (failure) => emit(
              state.rebuild(
                (b) => b
                  ..message = failure.error
                  ..error = true,
              ),
            ),
            (cartMealQuantity) => emit(
              state.rebuild(
                (b) => b..cartMealQuantity = cartMealQuantity,
              ),
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
                (b) => b
                  ..isLoading = false
                  ..message = 'تم حذف الوجبة من المفضلة بنجاح'
                  ..meal = Meal.withNewFavouriteStatus(
                    meal: state.meal!,
                    isFavourite: false,
                  ),
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
                (b) => b
                  ..isLoading = false
                  ..message = 'تم إضافة الوجبة إلى المفضلة بنجاح'
                  ..meal = Meal.withNewFavouriteStatus(
                    meal: state.meal!,
                    isFavourite: true,
                  ),
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
                (b) => b
                  ..isLoading = false
                  ..message = 'تمت إضافة الوجبة إلى السلة بنجاح',
              ),
            ),
          );
        }
      },
    );
  }
}
