import 'package:beitouti_users/core/util/constants.dart';
import 'package:beitouti_users/core/util/enums.dart';
import 'package:beitouti_users/core/widgets/custom_loader.dart';
import 'package:beitouti_users/core/widgets/image_checker.dart';
import 'package:beitouti_users/features/order/presentation/widgets/order_details.dart';
import 'package:beitouti_users/features/order/presentation/widgets/order_meal_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../../../injection.dart';
import '../bloc/order.dart';

class OrderPage extends StatefulWidget {
  final int orderId;

  const OrderPage({
    Key? key,
    required this.orderId,
  }) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final _bloc = sl<OrderBloc>();

  @override
  void initState() {
    _bloc.addGetOrderEvent(widget.orderId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderBloc, OrderState>(
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
            title: const Text('تفاصيل الطلب'),
          ),
          body: Stack(
            children: [
              if (state.order != null)
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15.w,
                          vertical: 15.h,
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              ImageChecker(
                                imageUrl: state.order!.chefImage ?? '',
                                borderColor: Colors.grey,
                              ),
                              SizedBox(height: 3.h),
                              Text(
                                state.order!.chefName,
                                style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      OrderDetails(
                        icon: Icons.numbers,
                        title: 'رقم الطلب',
                        value: state.order!.id.toString(),
                      ),
                      OrderDetails(
                        icon: Icons.delivery_dining_rounded,
                        title: 'رسوم التوصيل',
                        value: state.order!.deliveryFee.round().toString(),
                      ),
                      OrderDetails(
                        icon: MdiIcons.cash,
                        title: 'التكلفة الإجمالية',
                        value: state.order!.totalCost.round().toString(),
                      ),
                      OrderDetails(
                        icon: Icons.timer,
                        title: 'وقت الطلب',
                        value: state.order!.createdAt.substring(0, 10) +
                            " " +
                            state.order!.createdAt.substring(11, 16),
                      ),

                      OrderDetails(
                        icon: Icons.timer,
                        title: 'وقت التوصيل',
                        value: state.order!.selectedDeliveryTime,
                      ),
                      if (state.order!.notes != null)
                        OrderDetails(
                          icon: Icons.notes,
                          title: 'ملاحظات الطلب',
                          value: state.order!.notes.toString(),
                        ),
                      OrderDetails(
                        icon: MdiIcons.listStatus,
                        title: 'الحالة',
                        value: orderStatusToMessage(state.order!.status),
                      ),
                      Center(
                        child: Text(
                          'الوجبات' ' (${state.order!.meals!.length})',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ...state.order!.meals!.map(
                        (meal) => OrderMealItem(
                          meal: meal,
                          canBeEvaluated: state.order!.canBeEvaluated ?? false,
                          sendRate: (mealId, rate, notes) {
                            _bloc.addRateOrderEvent(
                              mealIndex: state.order!.meals!.indexOf(meal),
                              notes: notes,
                              rate: rate.round(),
                              orderId: widget.orderId,
                              mealId: mealId,
                            );
                          },
                        ),
                      ),
                      // TextButton(
                      //   onPressed: () {
                      //     _bloc.addReportOrderEvent(
                      //       reason: "الأكل نظيف بس ما عجبني",
                      //       reportedOn: "chef",
                      //       orderId:  state.order!.id,
                      //     );
                      //   },
                      //   child: Text("Report"),
                      // ),
                    ],
                  ),
                ),
              state.isLoading ? const Loader() : Container(),
            ],
          ),
        );
      },
    );
  }
}
