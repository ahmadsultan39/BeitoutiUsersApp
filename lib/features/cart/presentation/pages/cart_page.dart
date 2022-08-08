import 'package:beitouti_users/core/util/generate_screen.dart';
import 'package:beitouti_users/core/widgets/custom_loader.dart';
import 'package:beitouti_users/features/cart/presentation/bloc/cart.dart';
import 'package:beitouti_users/features/cart/presentation/widgets/cart_info.dart';
import 'package:beitouti_users/features/cart/presentation/widgets/cart_item.dart';
import 'package:beitouti_users/features/cart/presentation/widgets/empty_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';
import '../../../../injection.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final _bloc = sl<CartBloc>();

  @override
  void initState() {
    _bloc.addGetCartItemsEvent();
    super.initState();
  }

  void _increaseCartItemQuantity(
    int cartItemIndex,
    int cartItemId,
  ) {
    int mealQuantity = _bloc.state.cartItems[cartItemIndex].mealQuantity;
    if (mealQuantity < _bloc.state.cartItems[cartItemIndex].maxMealsPerDay &&
        mealQuantity <
            _bloc.state.cartItems[cartItemIndex].maxChefMealsPerDay) {
      _bloc.addIncreaseQuantityEvent(
        cartItemId: cartItemId,
        cartItemIndex: cartItemIndex,
        currentQuantity: mealQuantity,
      );
    }
  }

  void _decreaseCartItemQuantity(int cartItemIndex, int cartItemId) {
    int mealQuantity = _bloc.state.cartItems[cartItemIndex].mealQuantity;
    if (mealQuantity > 1) {
      _bloc.addDecreaseQuantityEvent(
        cartItemId: cartItemId,
        cartItemIndex: cartItemIndex,
        currentQuantity: mealQuantity,
      );
    }
  }

  void _navigateToOrderCartPage() {
    Navigator.of(context).pushNamed(NameScreen.orderCartScreen);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      bloc: _bloc,
      builder: (context, state) {
        WidgetsBinding.instance?.addPostFrameCallback((_) {
          message(
            message: state.message,
            isError: state.error,
            context: context,
            bloc: _bloc,
          );
        });
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "السلة",
              style: TextStyle(
                fontSize: 21.sp,
              ),
            ),
          ),
          body: state.isLoading
              ? const Loader()
              : state.cartItems.isEmpty
                  ? const EmptyCart()
                  : Stack(
                      children: [
                        SizedBox(
                          height: 450.h,
                          child: ListView.builder(
                            itemCount: state.cartItems.length,
                            itemBuilder: (_, index) => CartItem(
                              index: index,
                              item: state.cartItems[index],
                              decrease: _decreaseCartItemQuantity,
                              increase: _increaseCartItemQuantity,
                              delete: _bloc.addDeleteCartItem,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: CartInfo(
                            deliveryFee: state.deliveryFee,
                            mealsCost: state.mealsCost,
                            onTap: _navigateToOrderCartPage,
                          ),
                        ),
                        state.isLoading ? const Loader() : Container(),
                      ],
                    ),
        );
      },
    );
  }
}
