import 'package:beitouti_users/features/search/domain/use_cases/search_chefs.dart';
import 'package:beitouti_users/features/search/domain/use_cases/search_meals.dart';
import 'package:beitouti_users/features/search/domain/use_cases/search_subscriptions.dart';

import 'search.dart';
import 'package:bloc/bloc.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchMealsUseCase _searchMealsUseCase;
  final SearchSubscriptionsUseCase _searchSubscriptionsUseCase;
  final SearchChefsUseCase _searchChefsUseCase;

  void addMealsEvent(String query) {
    add(GetMealsEvent((b) => b
      ..query = query
      ..page = state.mealsPage));
  }

  void addSubscriptionsEvent(String query) {
    add(GetSubscriptionsEvent((b) => b
      ..query = query
      ..page = state.mealsPage));
  }

  void addChefsEvent(String query) {
    add(GetChefsEvent((b) => b
      ..query = query
      ..page = state.mealsPage));
  }

  void clearMessage() {
    add(ClearMessage());
  }

  SearchBloc(this._searchMealsUseCase, this._searchSubscriptionsUseCase,
      this._searchChefsUseCase)
      : super(SearchState.initial())  {
    on<SearchEvent>((event, emit) async {
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

      /// Meals search
      if (event is GetMealsEvent) {
        if(!state.isMealsFinished) {
          if (state.mealsPage == 0) {
            emit(state.rebuild((b) => b..isLoading = true));
          } else {
            emit(state.rebuild((b) => b..isMealsLoading = true));
          }
          final result = await _searchMealsUseCase(
              ParamsSearchMealsUseCase(
                  query: event.query, page: event.page));
          result.fold(
                (failure) {
              emit(
                state.rebuild(
                      (b) => b
                    ..isMealsLoading = false
                    ..isLoading = false
                    ..error = true
                    ..message = failure.error.toString(),
                ),
              );
            },
                (meals) => {
              emit(
                state.rebuild(
                      (b) => b
                    ..isLoading = false
                    ..isMealsLoading = false
                    ..meals.addAll(meals.data)
                    ..totalMeals = meals.total
                    ..mealsPage = b.mealsPage! + 1
                    ..isMealsFinished = b.mealsPage! == meals.pages,
                ),
              )
            },
          );
        }
      }

      /// Subscriptions search
      if (event is GetSubscriptionsEvent) {
        if(!state.isSubscriptionsFinished) {
          if (state.subscriptionsPage == 0) {
            emit(state.rebuild((b) => b..isLoading = true));
          } else {
            emit(state.rebuild((b) => b..isSubscriptionsLoading = true));
          }
          final result = await _searchSubscriptionsUseCase(
              ParamsSearchSubscriptionsUseCase(
                  query: event.query, page: event.page));
          result.fold(
                (failure) {
              emit(
                state.rebuild(
                      (b) => b
                    ..isSubscriptionsLoading = false
                    ..isLoading = false
                    ..error = true
                    ..message = failure.error.toString(),
                ),
              );
            },
                (subscriptions) => {
              emit(
                state.rebuild(
                      (b) => b
                    ..isLoading = false
                    ..isSubscriptionsLoading = false
                    ..subscriptions.addAll(subscriptions.data)
                    ..totalSubscriptions = subscriptions.total
                    ..subscriptionsPage = b.subscriptionsPage! + 1
                    ..isSubscriptionsFinished = b.subscriptionsPage! == subscriptions.pages,
                ),
              )
            },
          );
        }
      }

      /// Chefs search
      if (event is GetChefsEvent) {
        if(!state.isChefsFinished) {
          if (state.chefsPage == 0) {
            emit(state.rebuild((b) => b..isLoading = true));
          } else {
            emit(state.rebuild((b) => b..isChefsLoading = true));
          }
          final result = await _searchChefsUseCase(
              ParamsSearchChefsUseCase(
                  query: event.query, page: event.page));
          result.fold(
                (failure) {
              emit(
                state.rebuild(
                      (b) => b
                    ..isChefsLoading = false
                    ..isLoading = false
                    ..error = true
                    ..message = failure.error.toString(),
                ),
              );
            },
                (chefs) => {
              emit(
                state.rebuild(
                      (b) => b
                    ..isLoading = false
                    ..isChefsLoading = false
                    ..chefs.addAll(chefs.data)
                    ..totalChefs = chefs.total
                    ..chefsPage = b.chefsPage! + 1
                    ..isChefsFinished = b.chefsPage! == chefs.pages,
                ),
              )
            },
          );
        }
      }

    });
  }
}
