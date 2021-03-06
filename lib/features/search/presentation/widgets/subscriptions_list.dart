import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/util/generate_screen.dart';
import '../../../../core/widgets/custom_loader.dart';
import '../../../meals/domain/entities/home_chef.dart';
import '../bloc/search.dart';

class SubscriptionsList extends StatefulWidget {
  final SearchBloc bloc;
  final String query;

  const SubscriptionsList({Key? key, required this.bloc, required this.query})
      : super(key: key);

  @override
  State<SubscriptionsList> createState() => _SubscriptionsListState();
}

class _SubscriptionsListState extends State<SubscriptionsList> {
  final _controller = ScrollController();

  @override
  void initState() {
    _controller.addListener(
          () {
        if (_controller.position.extentAfter <= 0 &&
            !widget.bloc.state.isSubscriptionsFinished &&
            widget.bloc.state.subscriptions.isNotEmpty &&
            !widget.bloc.state.isSubscriptionsLoading
            &&
            !widget.bloc.state.isLoading &&
            _controller.position.pixels ==
                _controller.position.maxScrollExtent) {
          widget.bloc.addSubscriptionsEvent(widget.query);
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
              !widget.bloc.state.isSubscriptionsFinished &&
              widget.bloc.state.subscriptions.isNotEmpty &&
              !widget.bloc.state.isSubscriptionsLoading
              &&
              !widget.bloc.state.isLoading &&
              _controller.position.pixels ==
                  _controller.position.maxScrollExtent) {
            widget.bloc.addSubscriptionsEvent(widget.query);
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
        if (!widget.bloc.state.isSubscriptionsFinished &&
            !widget.bloc.state.isSubscriptionsLoading &&
            widget.bloc.state.subscriptions.isNotEmpty &&
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
                    : ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(0),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: widget.bloc.state.subscriptions.length,
                    itemBuilder: (ctx, index) {
                      return GestureDetector(
                        child:  Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(20),
                          height: 275.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0, 1.0),
                                  blurRadius: 6.0,
                                ),
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    widget.bloc.state.subscriptions[index].name,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.sp,
                                      color: Theme.of(context).colorScheme.secondary,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.yellow,),
                                      Text(
                                        " ${widget.bloc.state.subscriptions[index].rating?.round() ?? 0} (${widget.bloc.state.subscriptions[index].ratesCount})",
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                " - ?????? ???????? ???????????????? : ${widget.bloc.state.subscriptions[index].daysNumber}",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                ),
                              ),
                              // Text(
                              //   " - ?????????? ?????????????? : ${widget.bloc.state.subscriptions[index].mealDeliveryTime.substring(0,5)}",
                              //   style: TextStyle(
                              //     fontSize: 16.sp,
                              //   ),
                              // ),
                              Text(
                                " - ?????????? ???????????????? : ${widget.bloc.state.subscriptions[index].startsAt}",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                ),
                              ),
                              // Row(
                              //   children: [
                              //     Icon(
                              //       Icons.circle,
                              //       color: widget.bloc.state.subscriptions[index].
                              //           ? Colors.green
                              //           : Colors.red,
                              //       size: 16.sp,
                              //     ),
                              //     Text(
                              //       subscription.isAvailable
                              //           ? " ????????"
                              //           : " ????????",
                              //       style: TextStyle(
                              //         fontWeight: FontWeight.normal,
                              //         fontSize: 16.sp,
                              //       ),
                              //     ),
                              //   ],
                              // ),
                              Spacer(),
                              Text(
                                "?????? ???????????????? ${widget.bloc.state.subscriptions[index].totalCost} ??.??",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp,
                                  color: Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          // Navigator.pushNamed(
                          //     context, NameScreen.,
                          //     arguments:
                          //         widget.bloc.state.subscriptions[index]);
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
