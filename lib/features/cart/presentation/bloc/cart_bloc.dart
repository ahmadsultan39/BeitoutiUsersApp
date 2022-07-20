import 'package:beitouti_users/core/models/cart_item_model.dart';
import 'package:beitouti_users/core/usecase/usecase.dart';
import 'package:beitouti_users/features/cart/data/models/cart_model.dart';
import 'package:beitouti_users/features/cart/domain/use_cases/delete_cart_item_use_case.dart';
import 'package:beitouti_users/features/cart/domain/use_cases/get_cart_items_use_case.dart';
import 'package:beitouti_users/features/cart/domain/use_cases/increase_cart_item_quantity_use_case.dart';
import 'package:beitouti_users/features/cart/domain/use_cases/order_cart_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'cart.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  final GetCartItemsUseCase _getCartItemsUseCase;
  final OrderCartUseCase _orderCartUseCase;
  final DeleteCartItemUseCase _deleteCartItemUseCase;
  final UpdateCartItemQuantityUseCase _updateCartItemQuantityUseCase;

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

  void addIncreaseQuantityEvent({
    required int cartItemIndex,
    required int cartItemId,
    required int currentQuantity,
  }) {
    add(IncreaseQuantity(
      (b) => b
        ..cartItemIndex = cartItemIndex
        ..cartItemId = cartItemId
        ..currentQuantity = currentQuantity,
    ));
  }

  void addDecreaseQuantityEvent({
    required int cartItemIndex,
    required int cartItemId,
    required int currentQuantity,
  }) {
    add(DecreaseQuantity(
      (b) => b
        ..cartItemIndex = cartItemIndex
        ..cartItemId = cartItemId
        ..currentQuantity = currentQuantity,
    ));
  }

  @factoryMethod
  CartBloc(
    this._getCartItemsUseCase,
    this._orderCartUseCase,
    this._deleteCartItemUseCase,
    this._updateCartItemQuantityUseCase,
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
                  ), (success) {
            final deletedItem = state.cartItems
                .firstWhere((cartItem) => cartItem.id == event.id);
            emit(
              state.rebuild(
                (b) => b
                  ..mealsCost = state.mealsCost -
                      (deletedItem.mealCost * deletedItem.mealQuantity)
                  ..cartItems.remove(deletedItem)
                  ..isLoading = false
                  ..message = 'تمت عملية الحذف بنجاح',
              ),
            );
          });
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
            (cartItems) {
              if (cartItems.isNotEmpty) {
                int mealsCost = 0;
                for (var item in cartItems) {
                  mealsCost += (item.mealCost * item.mealQuantity);
                }
                emit(
                  state.rebuild((b) => b
                    ..isLoading = false
                    ..mealsCost = mealsCost
                    ..deliveryFee = cartItems[0].deliveryCost
                    ..cartItems.addAll(cartItems)),
                );
              } else {
                emit(
                  state.rebuild(
                    (b) => b
                      ..isLoading = false
                      ..isCartEmpty = true,
                  ),
                );
              }
            },
          );
        }

        /// *** IncreaseQuantity *** ///
        if (event is IncreaseQuantity) {
          final result = await _updateCartItemQuantityUseCase(
            ParamsUpdateCartItemQuantityUseCase(
              id: event.cartItemId,
              quantity: event.currentQuantity + 1,
            ),
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
                (b) => b
                  ..isLoading = false
                  ..mealsCost = state.mealsCost +
                      state.cartItems[event.cartItemIndex].mealCost
                  ..cartItems.update(
                    (cartItems) {
                      cartItems[event.cartItemIndex] =
                          CartItemModel.cartItemWithNewQuantity(
                        item: cartItems[event.cartItemIndex],
                        quantity: event.currentQuantity + 1,
                      );
                    },
                  ),
              ),
            ),
          );
        }

        /// *** DecreaseQuantity *** ///
        if (event is DecreaseQuantity) {
          final result = await _updateCartItemQuantityUseCase(
            ParamsUpdateCartItemQuantityUseCase(
              id: event.cartItemId,
              quantity: event.currentQuantity - 1,
            ),
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
                (b) => b
                  ..isLoading = false
                  ..mealsCost = state.mealsCost -
                      state.cartItems[event.cartItemIndex].mealCost
                  ..cartItems.update(
                    (cartItems) {
                      cartItems[event.cartItemIndex] =
                          CartItemModel.cartItemWithNewQuantity(
                        item: cartItems[event.cartItemIndex],
                        quantity: event.currentQuantity - 1,
                      );
                    },
                  ),
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
