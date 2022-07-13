import 'package:beitouti_users/core/util/constants.dart';
import 'package:beitouti_users/core/widgets/custom_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          appBar: AppBar(),
          body: Stack(
            children: [
              if (state.order != null)
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(state.order!.id.toString()),
                      Text(state.order!.chefName.toString()),
                      Text(state.order!.chefImage.toString()),
                      Text(state.order!.createdAt.toString()),
                      Text(state.order!.notes.toString()),
                      Text(state.order!.status.toString()),
                      Text(state.order!.deliveryFee.toString()),
                      Text(state.order!.totalCost.toString()),
                      Text(state.order!.selectedDeliveryTime.toString()),
                      Text(state.order!.canBeEvaluated.toString()),
                      Text(state.order!.canBeCanceled.toString()),
                      const Text("********************"),
                      ...state.order!.meals!
                          .map(
                            (e) => Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 20.h,
                              ),
                              child: Container(
                                color: Colors.blueGrey,
                                child: Column(
                                  children: [
                                    Text(e.name),
                                    Text(e.image),
                                    Text(e.id.toString()),
                                    Text(e.userRate.toString()),
                                    Text(e.quantity.toString()),
                                  ],
                                ),
                              ),
                            ),
                          )
                          .toList(),
                      TextButton(
                        onPressed: () {
                          _bloc.addRateOrderEvent(
                            notes: "كترووو ملح",
                            rate: 4,
                            orderId: state.order!.id,
                            mealId: state.order!.meals![0].id,
                          );
                        },
                        child: Text("Rate"),
                      ),
                      TextButton(
                        onPressed: () {
                          _bloc.addReportOrderEvent(
                            reason: "الأكل نظيف بس ما عجبني",
                            reportedOn: "chef",
                            orderId:  state.order!.id,
                          );
                        },
                        child: Text("Report"),
                      ),
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
