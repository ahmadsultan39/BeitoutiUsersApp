import 'package:beitouti_users/core/usecase/usecase.dart';
import 'package:beitouti_users/core/util/enums.dart';
import 'package:beitouti_users/features/orders/domain/use_cases/cancel_order_use_case.dart';
import 'package:beitouti_users/features/orders/domain/use_cases/get_current_orders_use_case.dart';
import 'package:beitouti_users/features/orders/domain/use_cases/get_previous_orders_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/network/params/paginate_list_params.dart';

import 'orders.dart';

@injectable
class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final GetCurrentOrdersUseCase _getCurrentOrdersUseCase;
  final GetPreviousOrdersUseCase _getPreviousOrdersUseCase;
  final CancelOrderUseCase _cancelOrderUseCase;

  void addGetCurrentOrdersEvent() {
    add(GetCurrentOrders());
  }

  void addGetPreviousOrdersEvent() {
    add(GetPreviousOrders((b) => b..page = state.previousOrdersPage));
  }

  void addCancelOrderEvent(int orderId, int orderIndex) {
    add(
      CancelOrder(
        (b) => b
          ..orderId = orderId
          ..orderIndex = orderIndex,
      ),
    );
  }

  void clearMessage() {
    add(ClearMessage());
  }

  @factoryMethod
  OrdersBloc(
    this._getCurrentOrdersUseCase,
    this._getPreviousOrdersUseCase,
    this._cancelOrderUseCase,
  ) : super(OrdersState.initial()) {
    on<OrdersEvent>(
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
                  ..currentOrders.update(
                    (b) => b[event.orderIndex]
                      ..status = OrderStatus.canceled
                      ..canBeCanceled = false,
                  )
                  ..message = 'تم إلغاء الطلب بنجاح',
              ),
            ),
          );
        }

        /// *** GetCurrentOrders *** ///
        if (event is GetCurrentOrders) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _getCurrentOrdersUseCase(NoParams());

          result.fold(
            (failure) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..error = true
                  ..message = failure.error,
              ),
            ),
            (currentOrders) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..currentOrders.replace(currentOrders),
              ),
            ),
          );
        }

        /// *** GetPreviousOrders *** ///
        if (event is GetPreviousOrders) {
          if (!state.isPreviousOrdersFinished) {
            if (state.previousOrdersPage == 1) {
              emit(
                state.rebuild(
                  (b) => b..isPreviousOrdersLoading = true,
                ),
              );
            } else {
              emit(
                state.rebuild(
                  (b) => b..isPreviousOrdersPaginateLoading = true,
                ),
              );
            }
            final result = await _getPreviousOrdersUseCase(
              PaginateListParams(event.page),
            );
            result.fold(
              (failure) {
                emit(
                  state.rebuild(
                    (b) => b
                      ..isPreviousOrdersLoading = false
                      ..isPreviousOrdersPaginateLoading = false
                      ..message = failure.error,
                  ),
                );
              },
              (previousOrders) => {
                emit(
                  state.rebuild(
                    (b) => b
                      ..previousOrders.addAll(previousOrders.data)
                      ..isPreviousOrdersFinished =
                          b.previousOrdersPage! == previousOrders.pages
                      ..previousOrdersPage = b.previousOrdersPage! + 1
                      ..isPreviousOrdersPaginateLoading = false
                      ..isPreviousOrdersLoading = false,
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
