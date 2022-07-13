import 'package:beitouti_users/core/usecase/usecase.dart';
import 'package:beitouti_users/features/cart/data/models/cart_model.dart';
import 'package:beitouti_users/features/cart/domain/use_cases/delet_cart_item_use_case.dart';
import 'package:beitouti_users/features/cart/domain/use_cases/get_cart_items_use_case.dart';
import 'package:beitouti_users/features/cart/domain/use_cases/order_cart_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'cart.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  final GetCartItemsUseCase _getCartItemsUseCase;
  final OrderCartUseCase _orderCartUseCase;
  final DeleteCartItemUseCase _deleteCartItemUseCase;

  void clearMessage() {
    add(ClearMessage());
  }

  void addGetCartItemsEvent() {
    add(GetCartItems());
  }

  void addDeleteCartItem(int id) {
    add(DeleteCartItem((b) => b..id = id));
  }

  void addOrderCartEvent(CartModel cart) {
    add(OrderCart((b) => b..cart = cart));
  }

  void addIncreaseQuantityEvent(int cartItemIndex, int cartItemId) {
    add(IncreaseQuantity(
      (b) => b
        ..cartItemIndex = cartItemIndex
        ..cartItemId = cartItemId,
    ));
  }

  void addDecreaseQuantityEvent(int cartItemIndex, int cartItemId) {}

  @factoryMethod
  CartBloc(
    this._getCartItemsUseCase,
    this._orderCartUseCase,
    this._deleteCartItemUseCase,
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

        /// *** DeleteCartItem *** ///
        if (event is DeleteCartItem) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _deleteCartItemUseCase(
            ParamsDeleteCartItemUseCase(id: event.id),
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
            (cartItems) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..message = 'تمت عملية الحذف بنجاح',
              ),
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

        /// *** IncreaseQuantity *** ///
        if (event is IncreaseQuantity) {
          // emit(state.rebuild((b) => b..isLoading = true));

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
                  ..cartItems[event.cartItemIndex].mealQuantity = 0,
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
