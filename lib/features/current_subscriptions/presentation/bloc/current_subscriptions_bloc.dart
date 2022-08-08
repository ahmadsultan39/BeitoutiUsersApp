import 'package:beitouti_users/core/usecase/usecase.dart';
import 'package:beitouti_users/features/orders/domain/use_cases/cancel_order_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/get_current_subscriptions_use_case.dart';
import '../../domain/use_cases/get_subscription_order_use_case.dart';
import 'current_subscriptions.dart';

@injectable
class CurrentSubscriptionsBloc
    extends Bloc<CurrentSubscriptionsEvent, CurrentSubscriptionsState> {
  final GetCurrentSubscriptionsUseCase _getCurrentSubscriptionsUseCase;
  final GetSubscriptionOrdersUseCase _getSubscriptionOrdersUseCase;
  final CancelOrderUseCase _cancelOrderUseCase;

  void addGetCurrentSubscriptionsEvent() {
    add(GetCurrentSubscriptions());
  }

  void addGetSubscriptionOrdersEvent(int subscriptionId) {
    add(GetSubscriptionOrders((b) => b..subscriptionId = subscriptionId));
  }

  void addClearSubscriptionOrdersEvent() {
    add(ClearSubscriptionOrders());
  }

  void addCancelOrderEvent(int orderId) {
    add(CancelOrder((b) => b..orderId = orderId));
  }

  void clearMessage() {
    add(ClearMessage());
  }

  @factoryMethod
  CurrentSubscriptionsBloc(
    this._getCurrentSubscriptionsUseCase,
    this._getSubscriptionOrdersUseCase,
    this._cancelOrderUseCase,
  ) : super(CurrentSubscriptionsState.initial()) {
    on<CurrentSubscriptionsEvent>(
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

        /// *** ClearSubscriptionOrders *** ///
        if (event is ClearSubscriptionOrders) {
          emit(state.rebuild((b) => b..subscriptionOrders.clear()));
        }

        /// *** GetSubscriptionOrders *** ///
        if (event is GetSubscriptionOrders) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _getSubscriptionOrdersUseCase(
            ParamsGetSubscriptionOrdersUseCase(
                subscriptionId: event.subscriptionId),
          );

          result.fold(
            (failure) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..error = true
                  ..message = failure.error,
              ),
            ),
            (subscriptionOrders) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..subscriptionOrders.replace(subscriptionOrders),
              ),
            ),
          );
        }

        /// *** GetCurrentSubscriptions *** ///
        if (event is GetCurrentSubscriptions) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _getCurrentSubscriptionsUseCase(NoParams());

          result.fold(
            (failure) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..error = true
                  ..message = failure.error,
              ),
            ),
            (currentSubscriptions) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..subscriptions.addAll(currentSubscriptions),
              ),
            ),
          );
        }

        /// *** CancelOrder *** ///
        if (event is CancelOrder) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _cancelOrderUseCase(
            ParamsCancelOrderUseCase(orderId: event.orderId),
          );

          result.fold(
            (failure) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..error = true
                  ..message = failure.error,
              ),
            ),
            (success) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..subscriptionOrders.removeWhere((b) => b.id == event.orderId)
                  ..message = 'تم إلغاء الطلب بنجاح',
              ),
            ),
          );
        }
      },
    );
  }
}
