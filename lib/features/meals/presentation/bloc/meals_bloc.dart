import 'package:beitouti_users/core/network/params/paginate_list_params.dart';
import 'package:beitouti_users/core/usecase/usecase.dart';
import 'package:beitouti_users/features/meals/domain/use_cases/get_all_offered_meals_use_case.dart';
import 'package:beitouti_users/features/meals/domain/use_cases/get_all_subscriptions_use_case.dart';
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
  final GetAllOfferedMealsUseCase _getAllOfferedMealsUseCase;
  final GetAllSubscriptionsUseCase _getAllSubscriptionsUseCase;

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

  void addGetAllSubscriptionsEvent() {
    add(GetAllSubscriptions((b) => b..page = state.allOfferedMealsPage));
  }

  void addGetTopSubscriptionsEvent() {
    add(GetTopSubscriptions());
  }

  void addGetAllOfferedMealsEvent() {
    add(GetAllOfferedMeals((b) => b..page = state.allOfferedMealsPage));
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
    this._getAllOfferedMealsUseCase,
    this._getAllSubscriptionsUseCase,
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

        /*** Get All Offered Meals ***/
        if (event is GetAllOfferedMeals) {
          if (!state.isAllOfferedMealsFinished) {
            if (state.allOfferedMealsPage == 1) {
              emit(state.rebuild((b) => b..isAllOfferedMealsLoading = true));
            } else {
              emit(state
                  .rebuild((b) => b..isAllOfferedMealsPaginateLoading = true));
            }
            final result = await _getAllOfferedMealsUseCase(
                PaginateListParams(event.page));
            result.fold(
              (failure) {
                emit(
                  state.rebuild(
                    (b) => b
                      ..isAllOfferedMealsLoading = false
                      ..isAllOfferedMealsPaginateLoading = false
                      ..message = failure.error,
                  ),
                );
              },
              (offeredMeals) => {
                emit(
                  state.rebuild((b) => b
                    ..allOfferedMeals.addAll(offeredMeals.data)
                    ..isAllOfferedMealsFinished =
                        b.allOfferedMealsPage! == offeredMeals.pages
                    ..allOfferedMealsPage = b.allOfferedMealsPage! + 1
                    ..isAllOfferedMealsPaginateLoading = false
                    ..isAllOfferedMealsLoading = false),
                )
              },
            );
          }
        }

        /*** Get All Subscriptions ***/
        if (event is GetAllSubscriptions) {
          if (!state.isAllSubscriptionsFinished) {
            if (state.allSubscriptionsPage == 1) {
              emit(state.rebuild((b) => b..isAllSubscriptionsLoading = true));
            } else {
              emit(state
                  .rebuild((b) => b..isAllSubscriptionsPaginateLoading = true));
            }
            final result = await _getAllSubscriptionsUseCase(
              PaginateListParams(event.page),
            );
            result.fold(
              (failure) {
                emit(
                  state.rebuild(
                    (b) => b
                      ..isAllSubscriptionsLoading = false
                      ..isAllSubscriptionsPaginateLoading = false
                      ..message = failure.error,
                  ),
                );
              },
              (subscriptions) => {
                emit(
                  state.rebuild(
                    (b) => b
                      ..allSubscriptions.addAll(subscriptions.data)
                      ..isAllSubscriptionsFinished =
                          b.allSubscriptionsPage! == subscriptions.pages
                      ..allSubscriptionsPage = b.allOfferedMealsPage! + 1
                      ..isAllSubscriptionsPaginateLoading = false
                      ..isAllSubscriptionsLoading = false,
                  ),
                )
              },
            );
          }
        }
      },
    );
  }
}
