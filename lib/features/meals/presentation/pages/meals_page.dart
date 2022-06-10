import 'package:beitouti_users/core/util/constants.dart';
import 'package:beitouti_users/core/widgets/custom_loader.dart';
import 'package:beitouti_users/features/meals/presentation/bloc/meals.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
                              itemBuilder: (_, index) => Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 15.w,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 220.w,
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Stack(
                                        children: [
                                          CachedNetworkImage(
                                            imageUrl: Endpoints.imageUrl +
                                                state.recentMeals[index].image,
                                            placeholder: (_, __) =>
                                                const Loader(),
                                            errorWidget: (_, __, ___) =>
                                                const Icon(Icons.error),
                                            fit: BoxFit.cover,
                                            height: 150.w,
                                            width: 220.w,
                                          ),
                                          Container(
                                            height: 150.w,
                                            width: 220.w,
                                            color:
                                                Colors.black.withOpacity(0.2),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 220.w,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 120.w,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  state.recentMeals[index].name,
                                                  style: TextStyle(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .secondary,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15.sp,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                Text(
                                                  state.recentMeals[index].chef
                                                      .name,
                                                  style: TextStyle(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .secondary,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12.sp,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            state.recentMeals[index].price
                                                    .toString() +
                                                ' ل.س',
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .tertiary,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
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
                              itemBuilder: (_, index) => Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 15.w,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 220.w,
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Stack(
                                        children: [
                                          CachedNetworkImage(
                                            imageUrl: Endpoints.imageUrl +
                                                state.topOrderedMeals[index]
                                                    .image,
                                            placeholder: (_, __) =>
                                                const Loader(),
                                            errorWidget: (_, __, ___) =>
                                                const Icon(Icons.error),
                                            fit: BoxFit.cover,
                                            height: 150.w,
                                            width: 220.w,
                                          ),
                                          Container(
                                            height: 150.w,
                                            width: 220.w,
                                            color:
                                                Colors.black.withOpacity(0.2),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 220.w,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 120.w,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  state.topOrderedMeals[index]
                                                      .name,
                                                  style: TextStyle(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .secondary,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15.sp,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                Text(
                                                  state.topOrderedMeals[index]
                                                      .chef.name,
                                                  style: TextStyle(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .secondary,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12.sp,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            state.topOrderedMeals[index].price
                                                    .toString() +
                                                ' ل.س',
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .tertiary,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
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
                              itemBuilder: (_, index) => Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 15.w,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 220.w,
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Stack(
                                        children: [
                                          CachedNetworkImage(
                                            imageUrl: Endpoints.imageUrl +
                                                state
                                                    .topRatedMeals[index].image,
                                            placeholder: (_, __) =>
                                                const Loader(),
                                            errorWidget: (_, __, ___) =>
                                                const Icon(Icons.error),
                                            fit: BoxFit.cover,
                                            height: 150.w,
                                            width: 220.w,
                                          ),
                                          Container(
                                            height: 150.w,
                                            width: 220.w,
                                            color:
                                                Colors.black.withOpacity(0.2),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 220.w,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 120.w,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  state.topRatedMeals[index]
                                                      .name,
                                                  style: TextStyle(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .secondary,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15.sp,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                Text(
                                                  state.topRatedMeals[index]
                                                      .chef.name,
                                                  style: TextStyle(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .secondary,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12.sp,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            state.topRatedMeals[index].price
                                                    .toString() +
                                                ' ل.س',
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .tertiary,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
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
                        "العروضات",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
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
                              itemBuilder: (_, index) => Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 15.w,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 220.w,
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Stack(
                                        children: [
                                          CachedNetworkImage(
                                            imageUrl: Endpoints.imageUrl +
                                                state.offeredMeals[index].image,
                                            placeholder: (_, __) =>
                                                const Loader(),
                                            errorWidget: (_, __, ___) =>
                                                const Icon(Icons.error),
                                            fit: BoxFit.cover,
                                            height: 150.w,
                                            width: 220.w,
                                          ),
                                          Container(
                                            height: 150.w,
                                            width: 220.w,
                                            color:
                                                Colors.black.withOpacity(0.2),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 220.w,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 120.w,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  state
                                                      .offeredMeals[index].name,
                                                  style: TextStyle(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .secondary,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15.sp,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                Text(
                                                  state.offeredMeals[index].chef
                                                      .name,
                                                  style: TextStyle(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .secondary,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12.sp,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            state.offeredMeals[index].price
                                                    .toString() +
                                                ' ل.س',
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .tertiary,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
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
                              itemBuilder: (_, index) => Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 15.w,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 220.w,
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Stack(
                                        children: [
                                          CachedNetworkImage(
                                            imageUrl: Endpoints.imageUrl +
                                                state.topOrderedMeals[index]
                                                    .image,
                                            placeholder: (_, __) =>
                                                const Loader(),
                                            errorWidget: (_, __, ___) =>
                                                const Icon(Icons.error),
                                            fit: BoxFit.cover,
                                            height: 150.w,
                                            width: 220.w,
                                          ),
                                          Container(
                                            height: 150.w,
                                            width: 220.w,
                                            color:
                                                Colors.black.withOpacity(0.2),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 220.w,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 120.w,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  state.topOrderedMeals[index]
                                                      .name,
                                                  style: TextStyle(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .secondary,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15.sp,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                Text(
                                                  state.topOrderedMeals[index]
                                                      .chef.name,
                                                  style: TextStyle(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .secondary,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12.sp,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            state.topOrderedMeals[index].price
                                                    .toString() +
                                                ' ل.س',
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .tertiary,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
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
                        "أفضل الإشتراكات",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    state.isTopSubscriptionsLoading
                        ? const Loader()
                        : SizedBox(
                            width: 375.w,
                            height: 200.w,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: state.topSubscriptions.length,
                              itemBuilder: (_, index) => Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 15.w,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 50.w,
                                          clipBehavior: Clip.hardEdge,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Stack(
                                            children: [
                                              CachedNetworkImage(
                                                imageUrl: Endpoints.imageUrl +
                                                    (state
                                                            .topSubscriptions[
                                                                index]
                                                            .chef
                                                            .profilePicture ??
                                                        ''),
                                                placeholder: (_, __) =>
                                                    const Loader(),
                                                errorWidget: (_, __, ___) =>
                                                    const Icon(Icons.error),
                                                fit: BoxFit.cover,
                                                height: 50.w,
                                                width: 50.w,
                                              ),
                                              Container(
                                                height: 50.w,
                                                width: 50.w,
                                                color: Colors.black
                                                    .withOpacity(0.2),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              state
                                                  .topSubscriptions[index].name,
                                              style: TextStyle(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary,
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              state.topSubscriptions[index].chef
                                                  .name,
                                              style: TextStyle(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary,
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "تاريخ البدء: ",
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          state
                                              .topSubscriptions[index].startsAt,
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .tertiary,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "عدد الأيام: ",
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          state
                                              .topSubscriptions[index].daysNumber.toString(),
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .tertiary,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "عدد الوجبات: ",
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          state
                                              .topSubscriptions[index].mealsCount.toString(),
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .tertiary,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "التكلفة: ",
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          state
                                              .topSubscriptions[index].totalCost.toString() + " ل.س",
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .tertiary,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    // Row(
                                    //   mainAxisAlignment:
                                    //       MainAxisAlignment.spaceBetween,
                                    //   crossAxisAlignment:
                                    //       CrossAxisAlignment.start,
                                    //   children: [
                                    //     SizedBox(
                                    //       width: 120.w,
                                    //       child: Column(
                                    //         mainAxisAlignment:
                                    //             MainAxisAlignment
                                    //                 .spaceBetween,
                                    //         crossAxisAlignment:
                                    //             CrossAxisAlignment.start,
                                    //         children: [
                                    //           Text(
                                    //             state.topSubscriptions[index]
                                    //                 .name,
                                    //             style: TextStyle(
                                    //               color: Theme.of(context)
                                    //                   .colorScheme
                                    //                   .secondary,
                                    //               fontWeight: FontWeight.bold,
                                    //               fontSize: 15.sp,
                                    //             ),
                                    //             overflow:
                                    //                 TextOverflow.ellipsis,
                                    //           ),
                                    //           Text(
                                    //             state.topSubscriptions[index]
                                    //                 .chef.name,
                                    //             style: TextStyle(
                                    //               color: Theme.of(context)
                                    //                   .colorScheme
                                    //                   .secondary,
                                    //               fontWeight: FontWeight.w400,
                                    //               fontSize: 12.sp,
                                    //             ),
                                    //             overflow:
                                    //                 TextOverflow.ellipsis,
                                    //           ),
                                    //         ],
                                    //       ),
                                    //     ),
                                    //     Text(
                                    //       state.topSubscriptions[index]
                                    //               .totalCost
                                    //               .toString() +
                                    //           ' ل.س',
                                    //       style: TextStyle(
                                    //         color: Theme.of(context)
                                    //             .colorScheme
                                    //             .tertiary,
                                    //       ),
                                    //     )
                                    //   ],
                                    // ),
                                  ],
                                ),
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

// Stack(
//   fit: StackFit.expand,
//   alignment: Alignment.center,
//   children: [
//     CachedNetworkImage(
//       imageUrl: Endpoints.imageUrl +
//           state.recentMeals[index].image,
//       placeholder: (_, __) => const Loader(),
//       errorWidget: (_, __, ___) =>
//           const Icon(Icons.error),
//       fit: BoxFit.cover,
//     ),
//     Container(
//       color: Colors.black.withOpacity(0.4),
//     ),
//     Positioned(
//       bottom: 15,
//       child: SizedBox(
//         width: 125.w,
//         child: Center(
//           child: Text(
//             state.recentMeals[index].name,
//             style: TextStyle(
//               color: Theme.of(context)
//                   .colorScheme
//                   .tertiary,
//               fontWeight: FontWeight.bold,
//               fontSize: 15.sp,
//             ),
//             overflow: TextOverflow.ellipsis,
//           ),
//         ),
//       ),
//     ),
//   ],
// ),
