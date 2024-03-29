import 'package:beitouti_users/core/models/cart_item_model.dart';
import 'package:beitouti_users/core/usecase/usecase.dart';
import 'package:beitouti_users/features/cart/data/models/cart_model.dart';
import 'package:beitouti_users/features/cart/domain/use_cases/delete_cart_item_use_case.dart';
import 'package:beitouti_users/features/cart/domain/use_cases/delete_cart_use_case.dart';
import 'package:beitouti_users/features/cart/domain/use_cases/get_cart_items_use_case.dart';
import 'package:beitouti_users/features/cart/domain/use_cases/increase_cart_item_quantity_use_case.dart';
import 'package:beitouti_users/features/cart/domain/use_cases/order_cart_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'cart.dart';

@lazySingleton
class CartBloc extends Bloc<CartEvent, CartState> {
  final GetCartItemsUseCase _getCartItemsUseCase;
  final OrderCartUseCase _orderCartUseCase;
  final DeleteCartItemUseCase _deleteCartItemUseCase;
  final UpdateCartItemQuantityUseCase _updateCartItemQuantityUseCase;
  final DeleteCartUseCase _deleteCartUseCase;

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

  void addDeleteCartEvent() {
    add(DeleteCart());
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

  void addReInitStateEvent() {
    add(ReInitState());
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

  CartBloc(
    this._getCartItemsUseCase,
    this._orderCartUseCase,
    this._deleteCartItemUseCase,
    this._updateCartItemQuantityUseCase,
    this._deleteCartUseCase,
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

        /// *** ReInitState *** ///
        if (event is ReInitState) {
          await _deleteCartUseCase(NoParams());
          emit(CartState.initial());
        }

        /// *** DeleteCart *** ///
        if (event is DeleteCart) {
          final result = await _deleteCartUseCase(NoParams());

          result.fold(
            (failure) => emit(state.rebuild(
              (b) => b
                ..error = true
                ..message = failure.error,
            )),
            (success) => emit(state.rebuild(
              (b) => b..allSuccess = true,
            )),
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
            (success) {
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
            },
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
            (cartItems) {
              if (cartItems.isNotEmpty) {
                int mealsCost = 0;
                for (var item in cartItems) {
                  mealsCost += (item.mealCost * item.mealQuantity);
                }
                emit(
                  state.rebuild(
                    (b) => b
                      ..isLoading = false
                      ..mealsCost = mealsCost
                      ..deliveryStartsHour = int.parse(
                          (cartItems[0].deliveryStartsAt.split(":").first))
                      ..deliveryEndsHour = int.parse(
                          (cartItems[0].deliveryEndsAt.split(":").first))
                      ..deliveryFee = cartItems[0].deliveryCost
                      ..cartItems.replace(cartItems),
                  ),
                );
              } else {
                emit(
                  state.rebuild((b) => b..isLoading = false),
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
                  ), (success) {
            emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..message = 'تم طلب السلة بنجاح',
              ),
            );
            addDeleteCartEvent();
          });
        }
      },
    );
  }
}
