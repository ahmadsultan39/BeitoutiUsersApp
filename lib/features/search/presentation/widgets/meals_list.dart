import 'package:beitouti_users/core/util/generate_screen.dart';
import 'package:beitouti_users/core/widgets/image_checker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/widgets/custom_loader.dart';
import '../../../../core/widgets/default_rating_bar.dart';
import '../bloc/search.dart';

class MealsList extends StatefulWidget {
  final SearchBloc bloc;
  final String query;

  const MealsList({Key? key, required this.bloc, required this.query})
      : super(key: key);

  @override
  State<MealsList> createState() => _MealsListState();
}

class _MealsListState extends State<MealsList> {
  final _controller = ScrollController();

  @override
  void initState() {
    _controller.addListener(
      () {
        if (_controller.position.extentAfter <= 0 &&
            !widget.bloc.state.isMealsFinished &&
            widget.bloc.state.meals.isNotEmpty &&
            !widget.bloc.state.isMealsLoading &&
            !widget.bloc.state.isLoading &&
            _controller.position.pixels ==
                _controller.position.maxScrollExtent) {
          widget.bloc.addMealsEvent(
              widget.query,
              widget.bloc.state.mealsPriceSort,
              widget.bloc.state.mealsRateSort);
        }
      },
    );

    super.initState();
  }

  void _checkInitialExtent() {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      if (_controller.hasClients) {
        //if the list is not scrollable yet
        if (_controller.position.maxScrollExtent <= 80.h) {
          //add the initial widgets again
          if (_controller.position.extentAfter <= 0 &&
              !widget.bloc.state.isMealsFinished &&
              widget.bloc.state.meals.isNotEmpty &&
              !widget.bloc.state.isMealsLoading &&
              !widget.bloc.state.isLoading &&
              _controller.position.pixels ==
                  _controller.position.maxScrollExtent) {
            widget.bloc.addMealsEvent(
                widget.query,
                widget.bloc.state.mealsPriceSort,
                widget.bloc.state.mealsRateSort);
          }
          //recursively check again
          _checkInitialExtent();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      bloc: widget.bloc,
      builder: (context, state) {
        if (!widget.bloc.state.isMealsFinished &&
            !widget.bloc.state.isMealsLoading &&
            widget.bloc.state.meals.isNotEmpty &&
            !widget.bloc.state.isLoading) {
          _checkInitialExtent();
        }
        WidgetsBinding.instance?.addPostFrameCallback((_) {
          message(
            message: state.message,
            isError: state.error,
            context: context,
            bloc: widget.bloc,
          );
        });
        return Expanded(
          child: widget.bloc.state.isLoading
              ? const Loader()
              : SingleChildScrollView(
                  controller: _controller,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DropdownButton<String>(
                        value: state.mealsPriceSort != null
                            ? state.mealsPriceSort == "desc"
                                ? "حسب الأعلى سعرا"
                                : "حسب الأقل سعرا"
                            : state.mealsRateSort != null
                                ? "حسب الأعلى تقييما"
                                : null,
                        hint: const Text("الترتيب"),
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: [
                          "حسب الأعلى تقييما",
                          "حسب الأعلى سعرا",
                          "حسب الأقل سعرا",
                        ].map((item) {
                          return DropdownMenuItem(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          /// add event
                          if (newValue == "حسب الأعلى تقييما") {
                            widget.bloc.addSortMealsByRateEvent("desc");
                          } else if (newValue == "حسب الأعلى سعرا") {
                            widget.bloc.addSortMealsByPriceEvent("desc");
                          } else {
                            widget.bloc.addSortMealsByPriceEvent("asc");
                          }
                        },
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(0),
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: widget.bloc.state.meals.length,
                        itemBuilder: (ctx, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15.w,
                              vertical: 15.h,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  NameScreen.mealScreen,
                                  arguments: widget.bloc.state.meals[index].id,
                                );
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 150.h,
                                    width: 375.w,
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Stack(
                                      children: [
                                        ImageChecker(
                                          imageUrl: widget.bloc.state.meals[index].image,
                                          height: 150.h,
                                          width: 375.w,
                                          circle: false,
                                        ),
                                        Container(
                                          height: 150.h,
                                          width: 375.w,
                                          color: Colors.black.withOpacity(0.4),
                                        ),
                                        Positioned(
                                          top: 10.h,
                                          left: 10.w,
                                          child: Container(
                                            height: 15.w,
                                            width: 15.w,
                                            decoration: BoxDecoration(
                                              color:
                                              widget.bloc.state.meals[index].isAvailable ? Colors.green : Colors.grey[800],
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              bottom: 10.h,
                                            ),
                                            child: DefaultRatingBar(
                                              initialRating: widget.bloc.state.meals[index].rating,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  SizedBox(
                                    width: 375.w,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 200.w,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                widget.bloc.state.meals[index].name,
                                                style: TextStyle(
                                                  color: Theme.of(context).colorScheme.secondary,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18.sp,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              SizedBox(
                                                height: 5.h,
                                              ),
                                              Text(
                                                widget.bloc.state.meals[index].chef.name,
                                                style: TextStyle(
                                                  color: Theme.of(context).colorScheme.secondary,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 15.sp,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              widget.bloc.state.meals[index].priceWithoutDiscount.toString() + ' ل.س',
                                              style: TextStyle(
                                                color: Theme.of(context).colorScheme.tertiary,
                                                fontWeight: widget.bloc.state.meals[index].priceWithDiscount != null
                                                    ? null
                                                    : FontWeight.bold,
                                                fontSize:
                                                widget.bloc.state.meals[index].priceWithDiscount != null ? 15.sp : 18.sp,
                                                decoration: widget.bloc.state.meals[index].priceWithDiscount != null
                                                    ? TextDecoration.lineThrough
                                                    : null,
                                              ),
                                            ),
                                            if (widget.bloc.state.meals[index].priceWithDiscount != null)
                                              Text(
                                                widget.bloc.state.meals[index].priceWithDiscount.toString() + ' ل.س',
                                                style: TextStyle(
                                                  color: Theme.of(context).colorScheme.tertiary,
                                                  fontSize: 18.sp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      if (!state.isMealsFinished && state.meals.isNotEmpty)
                        const Loader(),
                    ],
                  ),
                ),
        );
      },
    );
  }
}
