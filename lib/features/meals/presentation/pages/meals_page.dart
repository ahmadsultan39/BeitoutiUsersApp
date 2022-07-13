import 'package:beitouti_users/core/util/generate_screen.dart';
import 'package:beitouti_users/core/widgets/custom_loader.dart';
import 'package:beitouti_users/features/meals/presentation/bloc/meals.dart';
import 'package:beitouti_users/features/meals/presentation/widgets/meal_item.dart';
import 'package:beitouti_users/features/meals/presentation/widgets/subscribe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../injection.dart';

class MealsPage extends StatefulWidget {
  const MealsPage({Key? key}) : super(key: key);

  @override
  State<MealsPage> createState() => _MealsPageState();
}

class _MealsPageState extends State<MealsPage> {
  final _bloc = sl<MealsBloc>();

  void getMealsPageContent() {
    _bloc.addGetOfferedMealsEvent();
    _bloc.addGetRecentMealsEvent();
    _bloc.addGetTopRatedMealsEvent();
    _bloc.addGetTopSubscriptionsEvent();
    _bloc.addGetTopOrderedMealsEvent();
  }

  @override
  void initState() {
    getMealsPageContent();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MealsBloc, MealsState>(
      bloc: _bloc,
      builder: (context, state) {
        return Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10.h,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.w,
                        vertical: 10.h,
                      ),
                      child: Text(
                        "أحدث الوجبات",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    state.isRecentMealsLoading
                        ? const Loader()
                        : SizedBox(
                            width: 375.w,
                            height: 200.w,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: state.recentMeals.length,
                              itemBuilder: (_, index) => MealItem(
                                meal: state.recentMeals[index],
                              ),
                            ),
                          ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.w,
                        vertical: 10.h,
                      ),
                      child: Text(
                        "الأكثر طلباً",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    state.isTopOrderedMealsLoading
                        ? const Loader()
                        : SizedBox(
                            width: 375.w,
                            height: 200.w,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: state.topOrderedMeals.length,
                              itemBuilder: (_, index) => MealItem(
                                meal: state.topOrderedMeals[index],
                              ),
                            ),
                          ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.w,
                        vertical: 10.h,
                      ),
                      child: Text(
                        "الأكثر تقييماً",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    state.isTopRatedMealsLoading
                        ? const Loader()
                        : SizedBox(
                            width: 375.w,
                            height: 200.w,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: state.topRatedMeals.length,
                              itemBuilder: (_, index) => MealItem(
                                meal: state.topRatedMeals[index],
                              ),
                            ),
                          ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.w,
                        vertical: 10.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "العروضات",
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, NameScreen.allOfferedMealsScreen);
                            },
                            child: const Text("عرض الكل"),
                          ),
                        ],
                      ),
                    ),
                    state.isOfferedMealsLoading
                        ? const Loader()
                        : SizedBox(
                            width: 375.w,
                            height: 200.w,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: state.offeredMeals.length,
                              itemBuilder: (_, index) => MealItem(
                                meal: state.offeredMeals[index],
                              ),
                            ),
                          ),
                    SizedBox(
                      height: 15.h,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.w,
                        vertical: 10.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "الإشتراكات",
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                NameScreen.allSubscriptionsScreen,
                              );
                            },
                            child: const Text("عرض الكل"),
                          ),
                        ],
                      ),
                    ),
                    state.isTopSubscriptionsLoading
                        ? const Loader()
                        : SizedBox(
                            width: 375.w,
                            height: 150.w,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: state.topSubscriptions.length,
                              itemBuilder: (_, index) => Subscribe(
                                subscribe: state.topSubscriptions[index],
                              ),
                            ),
                          ),
                  ],
                ),
              ),
            ),
            state.isLoading ? const Loader() : Container(),
          ],
        );
      },
    );
  }
}
