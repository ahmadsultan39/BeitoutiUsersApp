import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/widgets/custom_loader.dart';
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
          widget.bloc.addMealsEvent(widget.query);
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
            widget.bloc.addMealsEvent(widget.query);
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
        return Expanded(
          child: SingleChildScrollView(
            controller: _controller,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                widget.bloc.state.isLoading
                    ? const Loader()
                    : GridView.builder(
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(0),
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                        ),
                        itemCount: widget.bloc.state.meals.length,
                        itemBuilder: (ctx, index) {
                          return GestureDetector(
                            child: Padding(
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
                                              state.meals[index].image,
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
                                          color: Colors.black.withOpacity(0.2),
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
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                state.meals[index].name,
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .secondary,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15.sp,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              Text(
                                                state.meals[index].chef.name,
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .secondary,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12.sp,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          state.meals[index]
                                                      .priceWithDiscount ==
                                                  null
                                              ? state.meals[index]
                                                  .priceWithoutDiscount.toString()
                                              : state.meals[index]
                                                      .priceWithDiscount
                                                      .toString() +
                                                  ' ??.??',
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
                            onTap: () {
                              // Navigator.pushNamed(
                              //     context, NameScreen.,
                              //     arguments:
                              //         widget.bloc.state.meals[index]);
                            },
                          );
                        }),
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
