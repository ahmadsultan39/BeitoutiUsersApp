import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/util/generate_screen.dart';
import '../../../../core/widgets/custom_loader.dart';
import '../../../../core/widgets/default_rating_bar.dart';
import '../../../../core/widgets/image_checker.dart';
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
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              NameScreen.chefScreen,
                              arguments: HomeChef(
                                id: widget.bloc.state.chefs[index].id,
                                name: widget.bloc.state.chefs[index].name,
                                profilePicture: widget.bloc.state.chefs[index].image,
                              ),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 150.w,
                                height: 150.w,
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    ImageChecker(
                                      imageUrl: widget.bloc.state.chefs[index].image!,
                                      circle: false,
                                      height: 150.w,
                                      width: 150.w,
                                    ),
                                    Container(
                                      height: 150.w,
                                      width: 150.w,
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                    Positioned(
                                      bottom: 5,
                                      child: DefaultRatingBar(
                                        numberColor: Theme.of(context).colorScheme.tertiary,
                                        withRatingCount: true,
                                        totalRating: widget.bloc.state.chefs[index].ratesCount ?? 0,
                                        initialRating: widget.bloc.state.chefs[index].rating,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 5.h,),
                              SizedBox(
                                width: 150.w,
                                child: Center(
                                  child: Text(
                                    widget.bloc.state.chefs[index].name,
                                    style: TextStyle(
                                      color: Theme.of(context).colorScheme.secondary,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.sp,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
