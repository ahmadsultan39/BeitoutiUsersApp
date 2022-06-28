import 'package:beitouti_users/core/usecase/usecase.dart';
import 'package:beitouti_users/features/cart/data/models/cart_model.dart';
import 'package:beitouti_users/features/cart/domain/use_cases/get_cart_items_use_case.dart';
import 'package:beitouti_users/features/cart/domain/use_cases/order_cart_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'cart.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  final GetCartItemsUseCase _getCartItemsUseCase;
  final OrderCartUseCase _orderCartUseCase;

  void clearMessage() {
    add(ClearMessage());
  }

  void addGetCartItemsEvent() {
    add(GetCartItems());
  }

  void addOrderCartEvent(CartModel cart) {
    add(OrderCart((b) => b..cart = cart));
  }

  @factoryMethod
  CartBloc(
    this._getCartItemsUseCase,
    this._orderCartUseCase,
  ) : super(CartState.initial()) {
    on<CartEvent>(
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

        /// *** GetCartItems *** ///
        if (event is GetCartItems) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _getCartItemsUseCase(NoParams());

          result.fold(
            (failure) => emit(
              state.rebuild(
                (b) => b
                  ..error = true
                  ..isLoading = false
                  ..message = failure.error,
              ),
            ),
            (cartItems) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..cartItems.addAll(cartItems),
              ),
            ),
          );
        }

        /// *** OrderCart *** ///
        if (event is OrderCart) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _orderCartUseCase(
            ParamsOrderCartUseCase(cart: event.cart),
          );

          result.fold(
            (failure) => emit(
              state.rebuild(
                (b) => b
                  ..error = true
                  ..isLoading = false
                  ..message = failure.error,
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
