import 'dart:async';

import 'package:beitouti_users/core/usecase/usecase.dart';
import 'package:beitouti_users/features/meals/domain/use_cases/get_offered_meals_use_case.dart';
import 'package:beitouti_users/features/meals/domain/use_cases/get_recent_meals_use_case.dart';
import 'package:beitouti_users/features/meals/domain/use_cases/get_top_ordered_meals_use_case.dart';
import 'package:beitouti_users/features/meals/domain/use_cases/get_top_rated_meals_use_case.dart';
import 'package:beitouti_users/features/meals/domain/use_cases/get_top_subscriptions_meals_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'meals.dart';

@injectable
class MealsBloc extends Bloc<MealsEvent, MealsState> {
  final GetOfferedMealsUseCase _getOfferedMealsUseCase;
  final GetRecentMealsUseCase _getRecentMealsUseCase;
  final GetTopSubscriptionsUseCase _getTopSubscriptionsUseCase;
  final GetTopOrderedMealsUseCase _getTopOrderedMealsUseCase;
  final GetTopRatedMealsUseCase _getTopRatedMealsUseCase;

  void addGetOfferedMealsEvent() {
    add(GetOfferedMeals());
  }

  void addGetTopRatedMealsEvent() {
    add(GetTopRatedMeals());
  }

  void addGetRecentMealsEvent() {
    add(GetRecentMeals());
  }

  void addGetTopOrderedMealsEvent() {
    add(GetTopOrderedMeals());
  }

  void addGetTopSubscriptionsEvent() {
    add(GetTopSubscriptions());
  }

  void clearMessage() {
    add(ClearMessage());
  }

  @factoryMethod
  MealsBloc(
    this._getOfferedMealsUseCase,
    this._getRecentMealsUseCase,
    this._getTopSubscriptionsUseCase,
    this._getTopOrderedMealsUseCase,
    this._getTopRatedMealsUseCase,
  ) : super(MealsState.initial()) {
    on<MealsEvent>(
      (event, emit) async {
        /*** ClearMessage ***/
        if (event is ClearMessage) {
          emit(
            state.rebuild(
              (b) => b
                ..error = false
                ..message = '',
            ),
          );
        }

        /*** Get Top Subscriptions ***/
        if (event is GetTopSubscriptions) {
          emit(
            state.rebuild((b) => b..isTopSubscriptionsLoading = true),
          );

          final result = await _getTopSubscriptionsUseCase(NoParams());

          result.fold(
            (failure) => emit(
              state.rebuild(
                (b) => b
                  ..isTopSubscriptionsLoading = false
                  ..error = true
                  ..message = failure.error,
              ),
            ),
            (subscriptions) => emit(
              state.rebuild(
                (b) => b
                  ..isTopSubscriptionsLoading = false
                  ..topSubscriptions.addAll(subscriptions),
              ),
            ),
          );
        }

        /*** Get Offered Meals ***/
        if (event is GetOfferedMeals) {
          emit(
            state.rebuild((b) => b..isOfferedMealsLoading = true),
          );

          final result = await _getOfferedMealsUseCase(NoParams());

          result.fold(
            (failure) => emit(
              state.rebuild(
                (b) => b
                  ..isOfferedMealsLoading = false
                  ..error = true
                  ..message = failure.error,
              ),
            ),
            (offeredMeals) => emit(
              state.rebuild(
                (b) => b
                  ..isOfferedMealsLoading = false
                  ..offeredMeals.addAll(offeredMeals),
              ),
            ),
          );
        }

        /*** Get Top Ordered Meals ***/
        if (event is GetTopOrderedMeals) {
          emit(
            state.rebuild((b) => b..isTopOrderedMealsLoading = true),
          );

          final result = await _getTopOrderedMealsUseCase(NoParams());

          result.fold(
            (failure) => emit(
              state.rebuild(
                (b) => b
                  ..isTopOrderedMealsLoading = false
                  ..error = true
                  ..message = failure.error,
              ),
            ),
            (topOrderedMeals) => emit(
              state.rebuild(
                (b) => b
                  ..isTopOrderedMealsLoading = false
                  ..topOrderedMeals.addAll(topOrderedMeals),
              ),
            ),
          );
        }

        /*** Get Top Rated Meals ***/
        if (event is GetTopRatedMeals) {
          emit(
            state.rebuild((b) => b..isTopRatedMealsLoading = true),
          );

          final result = await _getTopRatedMealsUseCase(NoParams());

          result.fold(
            (failure) => emit(
              state.rebuild(
                (b) => b
                  ..isTopRatedMealsLoading = false
                  ..error = true
                  ..message = failure.error,
              ),
            ),
            (topRatedMeals) => emit(
              state.rebuild(
                (b) => b
                  ..isTopRatedMealsLoading = false
                  ..topRatedMeals.addAll(topRatedMeals),
              ),
            ),
          );
        }

        /*** Get Recent Meals ***/
        if (event is GetRecentMeals) {
          emit(
            state.rebuild((b) => b..isRecentMealsLoading = true),
          );

          final result = await _getRecentMealsUseCase(NoParams());

          result.fold(
            (failure) => emit(
              state.rebuild(
                (b) => b
                  ..isRecentMealsLoading = false
                  ..error = true
                  ..message = failure.error,
              ),
            ),
            (recentMeals) => emit(
              state.rebuild(
                (b) => b
                  ..isRecentMealsLoading = false
                  ..recentMeals.addAll(recentMeals),
              ),
            ),
          );
        }
      },
    );
  }
}
