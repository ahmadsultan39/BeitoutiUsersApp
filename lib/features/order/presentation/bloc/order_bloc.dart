import 'package:beitouti_users/features/order/domain/use_cases/rate_order_use_case.dart';
import 'package:beitouti_users/features/order/domain/use_cases/report_order_use_case.dart';
import 'package:beitouti_users/features/order/domain/use_cases/show_order_use_case.dart';
import 'package:beitouti_users/features/orders/domain/use_cases/cancel_order_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'order.dart';

@injectable
class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final CancelOrderUseCase _cancelOrderUseCase;
  final GetOrderUseCase _getOrderUseCase;
  final ReportOrderUseCase _reportOrderUseCase;
  final RateOrderUseCase _rateOrderUseCase;

  void addGetOrderEvent(int orderId) {
    add(GetOrder((b) => b..orderId = orderId));
  }

  void addCancelOrderEvent(int orderId) {
    add(CancelOrder((b) => b..orderId = orderId));
  }

  void addReportOrderEvent({
    required String reason,
    required String reportedOn,
    required int orderId,
  }) {
    add(ReportOrder(
      (b) => b
        ..orderId = orderId
        ..reason = reason
        ..reportedOn = reportedOn,
    ));
  }

  void addRateOrderEvent({
    required String notes,
    required int rate,
    required int orderId,
    required int mealId,
  }) {
    add(RateOrder(
      (b) => b
        ..orderId = orderId
        ..notes = notes
        ..rate = rate
        ..mealId = mealId,
    ));
  }

  void clearMessage() {
    add(ClearMessage());
  }

  @factoryMethod
  OrderBloc(
    this._cancelOrderUseCase,
    this._getOrderUseCase,
    this._reportOrderUseCase,
    this._rateOrderUseCase,
  ) : super(OrderState.initial()) {
    on<OrderEvent>(
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

        /// *** GetOrder *** ///
        if (event is GetOrder) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _getOrderUseCase(
            ParamsGetOrderUseCase(
              orderId: event.orderId,
            ),
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
            (order) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..order = order,
              ),
            ),
          );
        }

        /// *** RateOrder *** ///
        if (event is RateOrder) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _rateOrderUseCase(
            ParamsRateOrderUseCase(
              orderId: event.orderId,
              rate: event.rate,
              notes: event.notes,
              mealId: event.mealId,
            ),
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
                  ..message = 'تم إرسال التقييم بنجاح',
              ),
            ),
          );
        }

        /// *** ReportOrder *** ///
        if (event is ReportOrder) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _reportOrderUseCase(
            ParamsReportOrderUseCase(
              orderId: event.orderId,
              reason: event.reason,
              reportedOn: event.reportedOn,
            ),
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
                  ..message = 'تم الإبلاغ عن الطلب بنجاح',
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
                  ..message = 'تم إلغاء الطلب بنجاح',
              ),
            ),
          );
        }
      },
    );
  }
}
