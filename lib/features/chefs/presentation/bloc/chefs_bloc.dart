import 'package:beitouti_users/features/chefs/domain/use_cases/get_most_recent.dart';
import 'package:beitouti_users/features/chefs/domain/use_cases/get_nearest.dart';
import 'package:beitouti_users/features/chefs/domain/use_cases/get_top_orders.dart';
import 'package:beitouti_users/features/chefs/domain/use_cases/get_top_rated.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import 'chefs.dart';

@injectable
class ChefsBloc extends Bloc<ChefsEvent, ChefsState> {
  final GetNearestChefsUseCase getNearestChefsUseCase;
  final GetTopOrdersChefsUseCase getTopOrdersChefsUseCase;
  final GetTopRatedChefsUseCase getTopRatedChefsUseCase;
  final GetMostRecentChefsUseCase getMostRecentChefsUseCase;

  void addGetNearestChefsEvent() {
    add(GetNearestChefsEvent((b) => b));
  }

  void addGetTopRatedChefsEvent() {
    add(GetTopRatedChefsEvent((b) => b));
  }

  void addGetTopOrderedChefsEvent() {
    add(GetTopOrderedChefsEvent((b) => b));
  }

  void addGetMostRecentChefsEvent() {
    add(GetMostRecentChefsEvent((b) => b));
  }

  void clearError() {
    add(ClearError((b) => b));
  }

  @factoryMethod
  ChefsBloc(this.getNearestChefsUseCase, this.getTopOrdersChefsUseCase,
      this.getTopRatedChefsUseCase, this.getMostRecentChefsUseCase)
      : super(ChefsState.initial()) {
    on<ChefsEvent>((event, emit) async {
      /***** Get Nearest Chefs *****/
      if (event is GetNearestChefsEvent) {
        emit(state.rebuild((b) => b..isLoading = true));
        final result = await getNearestChefsUseCase(NoParams());

        result.fold((failure) {
          emit(state.rebuild(
            (b) => b
              ..isLoading = false
              ..error = true
              ..message = failure.error,
          ));
        }, (chefs) {
          emit(
            state.rebuild(
              (b) => b
                ..isLoading = false
                ..nearest = chefs,
            ),
          );
        });
      }

      /***** Get Top Rated Chefs *****/
      if (event is GetNearestChefsEvent) {
        emit(state.rebuild((b) => b..isLoading = true));
        final result = await getTopRatedChefsUseCase(NoParams());

        result.fold((failure) {
          emit(state.rebuild(
            (b) => b
              ..isLoading = false
              ..error = true
              ..message = failure.error,
          ));
        }, (chefs) {
          emit(
            state.rebuild(
              (b) => b
                ..isLoading = false
                ..topRated = chefs,
            ),
          );
        });
      }

      /***** Get Top Ordered Chefs *****/
      if (event is GetNearestChefsEvent) {
        emit(state.rebuild((b) => b..isLoading = true));
        final result = await getTopOrdersChefsUseCase(NoParams());

        result.fold((failure) {
          emit(state.rebuild(
            (b) => b
              ..isLoading = false
              ..error = true
              ..message = failure.error,
          ));
        }, (chefs) {
          emit(
            state.rebuild(
              (b) => b
                ..isLoading = false
                ..topOrdered = chefs,
            ),
          );
        });
      }

      /***** Get Most Recent Chefs *****/
      if (event is GetNearestChefsEvent) {
        emit(state.rebuild((b) => b..isLoading = true));
        final result = await getMostRecentChefsUseCase(NoParams());

        result.fold((failure) {
          emit(state.rebuild(
            (b) => b
              ..isLoading = false
              ..error = true
              ..message = failure.error,
          ));
        }, (chefs) {
          emit(
            state.rebuild(
              (b) => b
                ..isLoading = false
                ..mostRecent = chefs,
            ),
          );
        });
      }

      /***** ClearError *****/
      if (event is ClearError) {
        emit(state.rebuild((b) => b
          ..error = false
          ..message = ''));
      }
    });
  }
}
