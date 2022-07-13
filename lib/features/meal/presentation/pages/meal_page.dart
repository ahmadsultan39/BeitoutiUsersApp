import 'package:beitouti_users/core/widgets/custom_loader.dart';
import 'package:beitouti_users/features/meal/presentation/bloc/meal.dart';
import 'package:beitouti_users/features/meal/presentation/widgets/add_to_cart_button.dart';
import 'package:beitouti_users/features/meal/presentation/widgets/availabililty_row.dart';
import 'package:beitouti_users/features/meal/presentation/widgets/favourite_and_go_back_row.dart';
import 'package:beitouti_users/features/meal/presentation/widgets/ingredients.dart';
import 'package:beitouti_users/features/meal/presentation/widgets/meal_details.dart';
import 'package:beitouti_users/features/meal/presentation/widgets/meal_image.dart';
import 'package:beitouti_users/features/meal/presentation/widgets/name_and_price.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/util/constants.dart';
import '../../../../injection.dart';

class MealPage extends StatefulWidget {
  final int mealId;

  const MealPage({
    Key? key,
    required this.mealId,
  }) : super(key: key);

  @override
  State<MealPage> createState() => _MealPageState();
}

class _MealPageState extends State<MealPage> {
  final _bloc = sl<MealBloc>();
  int _quantity = 1;

  @override
  void initState() {
    _bloc.addGetMealEvent(widget.mealId);
    super.initState();
  }

  void _onSubmit(String notes) {
    _bloc.addAddMealToCartEvent(
      meal: _bloc.state.meal!,
      quantity: _quantity,
      notes: notes,
    );
  }

  void removeMealFromFavourite() {
    _bloc.addRemoveFromFavouriteEvent(widget.mealId);
  }

  void addMealToFavourite() {
    _bloc.addAddToFavouriteEvent(widget.mealId);
  }

  void _increaseQuantity() {
    if (_bloc.state.meal != null &&
        _quantity < _bloc.state.meal!.remainingAvailableMealCount &&
        _quantity < _bloc.state.meal!.chef.remainingAvailableChefMealsCount) {
      setState(() {
        _quantity++;
      });
    }
  }

  void _decreaseQuantity() {
    if (_quantity > 1) {
      setState(() {
        _quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MealBloc, MealState>(
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
          backgroundColor: Theme.of(context).backgroundColor,
          body: state.meal != null
              ? Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    MealImage(imageUrl: state.meal!.image),
                    FavouriteAndGoBackRow(
                      isMealSaved: state.meal!.isSaved,
                      removeMealFromFavourite: removeMealFromFavourite,
                      addMealToFavourite: addMealToFavourite,
                    ),
                    AvailabilityRow(isAvailable: state.meal!.isAvailable),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 360.h,
                      ),
                      child: Container(
                        width: 375.w,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                          color: Theme.of(context).backgroundColor,
                        ),
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 25.w,
                              vertical: 20.h,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                NameAndPrice(
                                  name: state.meal!.name,
                                  chefName: state.meal!.chef.name,
                                  price: state.meal!.price,
                                  priceAfterDiscount:
                                      state.meal!.priceAfterDiscount,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        MealDetails(
                                          icon: Icons.delivery_dining_rounded,
                                          title: "رسوم التوصيل:",
                                          value: state.meal!.deliveryFee
                                                  .round()
                                                  .toString() +
                                              ' ل.س',
                                        ),
                                        MealDetails(
                                          icon: Icons.timer_rounded,
                                          title: "الوقت المتوقع للإعداد: ",
                                          value: state
                                                  .meal!.expectedPreparationTime
                                                  .toString() +
                                              ' ساعة',
                                        ),
                                        MealDetails(
                                          icon: Icons.category_rounded,
                                          title: "الصنف: ",
                                          value: state.meal!.category.name,
                                        ),
                                        MealDetails(
                                          icon: Icons.location_on_rounded,
                                          title: "العنوان: ",
                                          value: state.meal!.chef.location,
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 140.h,
                                      width: 45.w,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary
                                            .withOpacity(0.9),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5.w,
                                          vertical: 10.h,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            GestureDetector(
                                              onTap: _increaseQuantity,
                                              child: Text(
                                                "+",
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .backgroundColor,
                                                  fontSize: 20.sp,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              _quantity.toString(),
                                              style: TextStyle(
                                                color: Theme.of(context)
                                                    .backgroundColor,
                                                fontSize: 20.sp,
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: _decreaseQuantity,
                                              child: Text(
                                                "-",
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .backgroundColor,
                                                  fontSize: 20.sp,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Ingredients(
                                  ingredients: state.meal!.ingredients,
                                ),
                                AddToCartButton(
                                  onTap: _onSubmit,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : state.isLoading
                  ? const Loader()
                  : Container(),
        );
      },
    );
  }
}
