import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/util/generate_screen.dart';
import '../../../../core/widgets/custom_loader.dart';
import '../../../meals/domain/entities/home_chef.dart';
import '../bloc/search.dart';

class ChefsList extends StatefulWidget {
  final SearchBloc bloc;
  final String query;

  const ChefsList({Key? key, required this.bloc, required this.query})
      : super(key: key);

  @override
  State<ChefsList> createState() => _ChefsListState();
}

class _ChefsListState extends State<ChefsList> {
  final _controller = ScrollController();

  @override
  void initState() {
    _controller.addListener(
          () {
        if (_controller.position.extentAfter <= 0 &&
            !widget.bloc.state.isChefsFinished &&
            widget.bloc.state.chefs.isNotEmpty &&
            !widget.bloc.state.isChefsLoading &&
            !widget.bloc.state.isLoading &&
            _controller.position.pixels ==
                _controller.position.maxScrollExtent) {
          widget.bloc.addChefsEvent(widget.query);
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
              !widget.bloc.state.isChefsFinished &&
              widget.bloc.state.chefs.isNotEmpty &&
              !widget.bloc.state.isChefsLoading &&
              !widget.bloc.state.isLoading &&
              _controller.position.pixels ==
                  _controller.position.maxScrollExtent) {
            widget.bloc.addChefsEvent(widget.query);
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
        if (!widget.bloc.state.isChefsFinished &&
            !widget.bloc.state.isChefsLoading &&
            widget.bloc.state.chefs.isNotEmpty &&
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
                    itemCount: widget.bloc.state.chefs.length,
                    itemBuilder: (ctx, index) {
                      return GestureDetector(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15.w,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              // Navigator.of(context).push(MaterialPageRoute(
                              //   builder: (context) =>  ChefMenuPage(chef: HomeChef(
                              //       id: chefs[index].id,
                              //       name: chefs[index].name,
                              //       profilePicture: chefs[index].profilePicture)),
                              // ));
                              Navigator.of(context).pushNamed(NameScreen.chefScreen,
                                  arguments: HomeChef(
                                      id: widget.bloc.state.chefs[index].id,
                                      name: widget.bloc.state.chefs[index].name,
                                      profilePicture: widget.bloc.state.chefs[index].image));
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 100.w,
                                  height: 100.w,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Stack(
                                    children: [
                                      CachedNetworkImage(
                                        imageUrl: Endpoints.imageUrl +
                                            widget.bloc.state.chefs[index].image!,
                                        placeholder: (_, __) => const Loader(),
                                        errorWidget: (_, __, ___) =>
                                        const Icon(Icons.error),
                                        fit: BoxFit.cover,
                                        height: 150.w,
                                        width: 220.w,
                                      ),
                                      Container(
                                        height: 100.w,
                                        width: 100.w,
                                        color: Colors.black.withOpacity(0.2),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 100.w,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 100.w,
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              widget.bloc.state.chefs[index].name,
                                              style: TextStyle(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.sp,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            SizedBox(
                                              width: 30.w,
                                              child: Row(
                                                children: [
                                                  Text(
                                                    widget.bloc.state.chefs[index]
                                                        .rating!
                                                        .round()
                                                        .toString(),
                                                    style: TextStyle(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .secondary,
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 12.sp,
                                                    ),
                                                    overflow: TextOverflow.ellipsis,
                                                  ),
                                                  const Icon(
                                                    Icons.star_rate_rounded,
                                                    color: Colors.yellow,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      // Text(
                                      //   state.nearest[index].rateCount
                                      //       .toString()
                                      //   style: TextStyle(
                                      //     color: Theme.of(context)
                                      //         .colorScheme
                                      //         .tertiary,
                                      //   ),
                                      // )
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
                if (!state.isChefsFinished && state.chefs.isNotEmpty)
                  const Loader(),
              ],
            ),
          ),
        );
      },
    );
  }
}
