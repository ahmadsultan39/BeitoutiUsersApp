import 'package:beitouti_users/features/subscription/domain/use_cases/get_subscription_meals_use_case.dart';
import 'package:beitouti_users/features/subscription/domain/use_cases/get_subscription_use_case.dart';
import 'package:beitouti_users/features/subscription/domain/use_cases/subscribe_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'subscription.dart';

@injectable
class SubscriptionBloc extends Bloc<SubscriptionEvent, SubscriptionState> {
  final GetSubscriptionUseCase _getSubscriptionUseCase;
  final GetSubscriptionMealsUseCase _getSubscriptionMealsUseCase;
  final SubscribeUseCase _subscribeUseCase;

  void addSubscribeEvent({
    required int subscriptionId,
    required String notes,
  }) {
    add(Subscribe(
      (b) => b
        ..subscriptionId = subscriptionId
        ..notes = notes,
    ));
  }

  void addGetSubscriptionEvent(
    int subscriptionId,
  ) {
    add(GetSubscription(
      (b) => b..subscriptionId = subscriptionId,
    ));
  }

  void addGetSubscriptionMealsEvent(
    int subscriptionId,
  ) {
    add(GetSubscriptionMeals(
      (b) => b..subscriptionId = subscriptionId,
    ));
  }

  void clearMessage() {
    add(ClearMessage());
  }

  @factoryMethod
  SubscriptionBloc(
    this._getSubscriptionUseCase,
    this._getSubscriptionMealsUseCase,
    this._subscribeUseCase,
  ) : super(SubscriptionState.initial()) {
    on<SubscriptionEvent>(
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

        /*** GetSubscription ***/
        if (event is GetSubscription) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _getSubscriptionUseCase(
            ParamsGetSubscriptionUseCase(subscriptionId: event.subscriptionId),
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
            (subscription) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..subscription = subscription,
              ),
            ),
          );
        }

        /*** GetSubscriptionMeals ***/
        if (event is GetSubscriptionMeals) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _getSubscriptionMealsUseCase(
            ParamsGetSubscriptionMealsUseCase(
              subscriptionId: event.subscriptionId,
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
            (subscriptionMeals) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..subscriptionMeals.addAll(subscriptionMeals),
              ),
            ),
          );
        }

        /*** Subscribe ***/
        if (event is Subscribe) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _subscribeUseCase(
            ParamsSubscribeUseCase(
              subscriptionId: event.subscriptionId,
              notes: event.notes,
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
