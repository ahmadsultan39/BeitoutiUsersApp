import 'package:beitouti_users/core/util/generate_screen.dart';
import 'package:beitouti_users/core/widgets/custom_loader.dart';
import 'package:beitouti_users/features/orders/presentation/bloc/orders.dart';
import 'package:beitouti_users/features/orders/presentation/widgets/current_order_item.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
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
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    if(state.currentOrders.isNotEmpty)
                    Row(
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
                          '?????????????? ??????????????',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    ...state.currentOrders
                        .map(
                          (order) => CurrentOrderItem(order: order,bloc: _bloc,),
                        )
                        .toList(),
                    SizedBox(
                      height: 20.h,
                    ),
                    if(state.previousOrders.isNotEmpty)
                    Row(
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
                          '?????????????? ??????????????',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    ...state.previousOrders
                        .map(
                          (order) => CurrentOrderItem(order: order),
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
