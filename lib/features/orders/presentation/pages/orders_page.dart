import 'package:beitouti_users/core/widgets/custom_loader.dart';
import 'package:beitouti_users/features/orders/presentation/bloc/orders.dart';
import 'package:beitouti_users/features/orders/presentation/widgets/current_order_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';
import '../../../../injection.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  final _bloc = sl<OrdersBloc>();

  @override
  void initState() {
    _bloc.addGetCurrentOrdersEvent();
    _bloc.addGetPreviousOrdersEvent();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersBloc, OrdersState>(
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
        return Stack(
          children: [
            RefreshIndicator(
              onRefresh: () async {
                _bloc.addGetCurrentOrdersEvent();
                _bloc.addGetPreviousOrdersEvent();
              },
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    if (state.currentOrders.isNotEmpty)
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15.w,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.timer,
                              size: 25.sp,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'الطلبات الحالية',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ...state.currentOrders
                        .map(
                          (order) => CurrentOrderItem(
                            order: order,
                            cancel: (orderId) {
                              _bloc.addCancelOrderEvent(
                                orderId,
                                state.currentOrders.indexOf(order),
                              );
                            },
                          ),
                        )
                        .toList(),
                    SizedBox(
                      height: 20.h,
                    ),
                    if (state.previousOrders.isNotEmpty)
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15.w,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.history,
                              size: 25.sp,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'الطلبات السابقة',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ...state.previousOrders
                        .map(
                          (order) => CurrentOrderItem(
                            order: order,
                            previous: true,
                          ),
                        )
                        .toList(),
                  ],
                ),
              ),
            ),
            if (state.isLoading) const Loader(),
          ],
        );
      },
    );
  }
}
