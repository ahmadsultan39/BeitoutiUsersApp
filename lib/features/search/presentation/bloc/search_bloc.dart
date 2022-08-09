import 'package:beitouti_users/features/search/domain/use_cases/search_chefs.dart';
import 'package:beitouti_users/features/search/domain/use_cases/search_meals.dart';
import 'package:beitouti_users/features/search/domain/use_cases/search_subscriptions.dart';
import 'package:injectable/injectable.dart';

import 'search.dart';
import 'package:bloc/bloc.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchMealsUseCase _searchMealsUseCase;
  final SearchSubscriptionsUseCase _searchSubscriptionsUseCase;
  final SearchChefsUseCase _searchChefsUseCase;

  void addMealsEvent(String query, String? priceSort, String? rateSort) {
    add(GetMealsEvent(
      (b) => b
        ..query = query
        ..page = state.mealsPage
        ..sortPrice = priceSort
        ..sortRate = rateSort,
    ));
  }

  void addSortMealsByPriceEvent(String order) {
    add(SortMealsByPriceEvent((b) => b..sortOrder = order));
  }

  void addSortMealsByRateEvent(String order) {
    add(SortMealsByRateEvent((b) => b..sortOrder = order));
  }

  void addFilterSubscriptionsByDaysEvent(int days) {
    add(FilterSubscriptionsByDaysEvent((b) => b..filterDays = days));
  }

  void addSubscriptionsEvent(String query, int? days) {
    add(GetSubscriptionsEvent((b) => b
      ..query = query
      ..page = state.subscriptionsPage
      ..filterDays = days));
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
      : super(SearchState.initial()) {
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

      /*** MealsPriceSort ***/
      if (event is SortMealsByPriceEvent) {
        emit(
          state.rebuild(
            (b) => b
              ..mealsPriceSort = event.sortOrder
              ..mealsRateSort = null
              ..meals.replace([])
              ..mealsPage = 1
              ..isMealsFinished = false,
          ),
        );
        addMealsEvent(state.query, state.mealsPriceSort, state.mealsRateSort);
      }

      /*** MealsRateSort ***/
      if (event is SortMealsByRateEvent) {
        emit(
          state.rebuild(
            (b) => b
              ..mealsRateSort = event.sortOrder
              ..mealsPriceSort = null
              ..meals.replace([])
              ..mealsPage = 1
              ..isMealsFinished = false,
          ),
        );
        addMealsEvent(state.query, state.mealsPriceSort, state.mealsRateSort);
      }

      /*** subscriptionFilter ***/
      if (event is FilterSubscriptionsByDaysEvent) {
        emit(
          state.rebuild(
            (b) => b
              ..subscriptionsDaysFilter = event.filterDays
              ..subscriptions.replace([])
              ..subscriptionsPage = 1
              ..isSubscriptionsFinished = false,
          ),
        );
        addSubscriptionsEvent(state.query, state.subscriptionsDaysFilter);
      }

      /// Meals search
      if (event is GetMealsEvent) {
        if (!state.isMealsFinished) {
          if (state.mealsPage == 1) {
            emit(
              state.rebuild(
                (b) => b
                  ..isLoading = true
                  ..query = event.query,
              ),
            );
          } else {
            emit(state.rebuild((b) => b..isMealsLoading = true));
          }
          final result = await _searchMealsUseCase(
            ParamsSearchMealsUseCase(
              query: event.query,
              page: event.page,
              priceSort: event.sortPrice,
              rateSort: event.sortRate,
            ),
          );
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
                    ..isMealsFinished = b.mealsPage! == meals.pages
                    ..mealsPage = b.mealsPage! + 1,
                ),
              )
            },
          );
        }
      }

      /// Subscriptions search
      if (event is GetSubscriptionsEvent) {
        if (!state.isSubscriptionsFinished) {
          if (state.subscriptionsPage == 1) {
            emit(state.rebuild((b) => b..isLoading = true));
          } else {
            emit(state.rebuild((b) => b..isSubscriptionsLoading = true));
          }
          final result = await _searchSubscriptionsUseCase(
              ParamsSearchSubscriptionsUseCase(
                  query: event.query,
                  page: event.page,
                  daysFilter: event.filterDays));
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
                    ..isSubscriptionsFinished =
                        b.subscriptionsPage! == subscriptions.pages
                    ..subscriptionsPage = b.subscriptionsPage! + 1,
                ),
              )
            },
          );
        }
      }

      /// Chefs search
      if (event is GetChefsEvent) {
        if (!state.isChefsFinished) {
          if (state.chefsPage == 1) {
            emit(state.rebuild((b) => b..isLoading = true));
          } else {
            emit(state.rebuild((b) => b..isChefsLoading = true));
          }
          final result = await _searchChefsUseCase(
              ParamsSearchChefsUseCase(query: event.query, page: event.page));
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
                    ..isChefsFinished = b.chefsPage! == chefs.pages
                    ..chefsPage = b.chefsPage! + 1,
                ),
              )
            },
          );
        }
      }
    });
  }
}
