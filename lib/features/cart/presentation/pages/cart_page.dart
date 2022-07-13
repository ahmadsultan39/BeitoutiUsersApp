import 'package:beitouti_users/core/widgets/custom_loader.dart';
import 'package:beitouti_users/features/cart/data/models/cart_meal_model.dart';
import 'package:beitouti_users/features/cart/data/models/cart_model.dart';
import 'package:beitouti_users/features/cart/presentation/bloc/cart.dart';
import 'package:beitouti_users/features/cart/presentation/widgets/cart_item.dart';
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

  void _increaseCartItemQuantity(int cartItemIndex, int cartItemId) {
    if (_bloc.state.cartItems[cartItemIndex].mealQuantity <
            _bloc.state.cartItems[cartItemIndex].maxMealsPerDay &&
        _bloc.state.cartItems[cartItemIndex].mealQuantity <
            _bloc.state.cartItems[cartItemIndex].maxChefMealsPerDay) {
      _bloc.addIncreaseQuantityEvent(cartItemIndex, cartItemId);
    }
  }

  void _decreaseCartItemQuantity(int cartItemIndex, int cartItemId) {
    if (_bloc.state.cartItems[cartItemIndex].mealQuantity > 1) {
      _bloc.addDecreaseQuantityEvent(cartItemIndex, cartItemId);
    }
  }

  void orderCart({
    required String selectedDeliveryTime,
    required String notes,
  }) {
    if (_bloc.state.cartItems.isNotEmpty) {
      final int deliveryCost = _bloc.state.cartItems[0].deliveryCost;
      final int chefId = _bloc.state.cartItems[0].chefId;
      final List<CartMealModel> meals = [];
      int mealsCount = 0;
      int mealsCost = 0;
      for (var cartItem in _bloc.state.cartItems) {
        mealsCount = mealsCount + (cartItem.mealQuantity);
        mealsCost = mealsCost + (cartItem.mealQuantity * cartItem.mealCost);
        meals.add(
          CartMealModel(
            id: cartItem.id,
            quantity: cartItem.mealQuantity,
            notes: cartItem.notes,
          ),
        );
      }
      final CartModel cart = CartModel(
        meals: meals,
        chefId: chefId,
        selectedDeliveryTime:
            "2022-07-07 " + _bloc.state.cartItems[0].deliveryStartsAt,
        mealsCount: mealsCount,
        notes: notes,
        totalCost: mealsCost + deliveryCost,
        mealsCost: mealsCost,
      );
      _bloc.addOrderCartEvent(cart);
    }
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
          body: Stack(
            children: [
              ListView.builder(
                itemCount: state.cartItems.length,
                itemBuilder: (_, index) => CartItem(
                  index: index,
                  item: state.cartItems[index],
                  decrease: _decreaseCartItemQuantity,
                  increase: _increaseCartItemQuantity,
                  delete: _bloc.addDeleteCartItem,
                ),
              ),
              Positioned(
                bottom: 0,
                child: GestureDetector(
                  onTap: () {
                    orderCart(
                      selectedDeliveryTime: '',
                      notes: 'notes',
                    );
                  },
                  child: Container(
                    width: 375.w,
                    height: 150.h,
                    color: Colors.grey,
                  ),
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
