import 'package:beitouti_users/features/meals/domain/entities/home_subscribe.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/util/generate_screen.dart';
import '../../../../core/widgets/custom_loader.dart';
import '../../../../core/widgets/image_checker.dart';
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
            !widget.bloc.state.isSubscriptionsLoading &&
            !widget.bloc.state.isLoading &&
            _controller.position.pixels ==
                _controller.position.maxScrollExtent) {
          widget.bloc.addSubscriptionsEvent(
              widget.query, widget.bloc.state.subscriptionsDaysFilter);
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
              !widget.bloc.state.isSubscriptionsLoading &&
              !widget.bloc.state.isLoading &&
              _controller.position.pixels ==
                  _controller.position.maxScrollExtent) {
            widget.bloc.addSubscriptionsEvent(
                widget.query, widget.bloc.state.subscriptionsDaysFilter);
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
                DropdownButton<int>(
                  value: state.subscriptionsDaysFilter,
                  hint: const Text(
                      "عدد الأيام", style: TextStyle(color: Colors.black)),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: [
                    5,
                    7,
                  ].map((item) {
                    return DropdownMenuItem(
                      value: item,
                      child: Text(item.toString(),
                          style: TextStyle(color: Colors.black)),
                    );
                  }).toList(),
                  onChanged: (int? newValue) {
                    /// add event
                    widget.bloc
                        .addFilterSubscriptionsByDaysEvent(newValue!);
                  },
                ),
                ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(0),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: widget.bloc.state.subscriptions.length,
                    itemBuilder: (ctx, index) {
                      return GestureDetector(
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(20),
                          height: 225.h,
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  ImageChecker(
                                    imageUrl: widget.bloc.state.subscriptions[index].chef.image ?? '',
                                    width: 75.w,
                                    height: 75.h,
                                    circle: false,
                                    borderColor: Colors.black26,
                                    borderRadius: 20,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        widget.bloc.state.subscriptions[index].name,
                                        style: TextStyle(
                                          color: Theme.of(context).colorScheme.secondary,
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4.h,
                                      ),
                                      Text(
                                        widget.bloc.state.subscriptions[index].chef.name,
                                        style: TextStyle(
                                          color: Theme.of(context).colorScheme.secondary,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              SubscriptionInfo(
                                title: 'التكلفة',
                                value: widget.bloc.state.subscriptions[index].totalCost.toString() + ' ل.س',
                              ),
                              SubscriptionInfo(
                                title: 'عدد الأيام',
                                value: widget.bloc.state.subscriptions[index].daysNumber.toString(),
                              ),
                              SubscriptionInfo(
                                title: 'تاريخ البدء:',
                                value: widget.bloc.state.subscriptions[index].startsAt,
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            NameScreen.subscriptionScreen,
                            arguments:
                            HomeSubscribe(
                                id: widget.bloc.state.subscriptions[index].id,
                                chefId: widget.bloc.state.subscriptions[index]
                                    .chef.id,
                                name: widget.bloc.state.subscriptions[index]
                                    .name,
                                daysNumber: widget.bloc.state
                                    .subscriptions[index].daysNumber,
                                isAvailable: widget.bloc.state
                                    .subscriptions[index].isAvailable,
                                startsAt: widget.bloc.state.subscriptions[index]
                                    .startsAt,
                                totalCost: widget.bloc.state
                                    .subscriptions[index].totalCost,
                                chef: HomeChef(
                                  name: widget.bloc.state.subscriptions[index]
                                      .chef.name,
                                  id: widget.bloc.state.subscriptions[index]
                                      .chef.id,
                                  profilePicture: widget.bloc.state
                                      .subscriptions[index].chef.image,
                                ))
                            ,
                          );
                        },
                      );
                    }),
                SizedBox(
                  height: 10.h,
                ),
                if (!state.isSubscriptionsFinished &&
                    state.subscriptions.isNotEmpty)
                  const Loader(),
              ],
            ),
          ),
        );
      },
    );
  }
}


class SubscriptionInfo extends StatelessWidget {
  final String title;
  final String value;

  const SubscriptionInfo({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 5.h,
      ),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 5.w,
          ),
          Text(
            value,
            style: TextStyle(
              color: Theme.of(context).colorScheme.tertiary,
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
