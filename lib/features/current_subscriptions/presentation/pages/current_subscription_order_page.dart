import 'package:beitouti_users/core/widgets/image_checker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/widgets/custom_loader.dart';
import '../../../../injection.dart';
import '../bloc/current_subscriptions.dart';

class CurrentSubscriptionOrderPage extends StatefulWidget {
  final int subscriptionId;

  const CurrentSubscriptionOrderPage({
    Key? key,
    required this.subscriptionId,
  }) : super(key: key);

  @override
  State<CurrentSubscriptionOrderPage> createState() =>
      _CurrentSubscriptionOrderPageState();
}

class _CurrentSubscriptionOrderPageState
    extends State<CurrentSubscriptionOrderPage> {
  final _bloc = sl<CurrentSubscriptionsBloc>();

  @override
  void initState() {
    _bloc.addGetSubscriptionOrdersEvent(widget.subscriptionId);
    super.initState();
  }

  @override
  void dispose() {
    _bloc.addClearSubscriptionOrdersEvent();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentSubscriptionsBloc, CurrentSubscriptionsState>(
      bloc: _bloc,
      builder: (context, state) {
        WidgetsBinding.instance?.addPostFrameCallback(
          (_) {
            message(
              message: state.message,
              isError: state.error,
              context: context,
              bloc: _bloc,
            );
          },
        );
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: AppBar(
            title: const Text("الطلبات"),
          ),
          body: Stack(
            children: [
              Column(
                children: [
                  ...state.subscriptionOrders.map(
                    (order) => Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.w,
                        vertical: 15.h,
                      ),
                      child: Container(
                        width: 375.w,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.background,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, 10),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  ImageChecker(
                                    imageUrl: order.mealImage,
                                    width: 80.w,
                                    height: 80.h,
                                  ),
                                  SizedBox(width: 5.w),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(order.mealName),
                                      Text(order.selectedDeliveryTime),
                                    ],
                                  ),
                                ],
                              ),
                              if (order.canBeCanceled)
                                IconButton(
                                  icon: const Icon(Icons.delete_rounded),
                                  onPressed: () {
                                    _bloc.addCancelOrderEvent(order.id);
                                  },
                                )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              state.isLoading ? const Loader() : Container(),
            ],
          ),
        );
      },
    );
  }
}
