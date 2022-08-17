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

  final TextEditingController _reportTextFieldController =
      TextEditingController();

  bool _isSelectedReportedOnValid = true;

  String _selectedReportedOnErrorMessage = '';

  bool _isReasonValid = true;

  String _reasonErrorMessage = '';

  String? _reportedOn;

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
            actions: [
              if (state.order != null && (state.order!.canBeEvaluated ?? false))
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) => StatefulBuilder(
                        builder: (context, setDialogState) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            backgroundColor:
                                Theme.of(context).colorScheme.background,
                            actions: [
                              TextButton(
                                onPressed: () {
                                  if (_reportedOn == null) {
                                    setDialogState(() {
                                      _isSelectedReportedOnValid = false;
                                      _selectedReportedOnErrorMessage =
                                          'الرجاء اختيار المبلغ عنه';
                                    });
                                  }
                                  if (_reportTextFieldController.text.isEmpty) {
                                    setDialogState(() {
                                      _isReasonValid = false;
                                      _reasonErrorMessage =
                                          'الرجاء توضيح سبب الإبلاغ';
                                    });
                                  } else {
                                    _bloc.addReportOrderEvent(
                                      reason: _reportTextFieldController.text,
                                      reportedOn: _reportedOn == 'الطاهي'
                                          ? "chef"
                                          : "delivery",
                                      orderId: state.order!.id,
                                    );
                                    Navigator.of(context).pop();
                                  }
                                },
                                child: Text(
                                  "إرسال الإبلاغ",
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                  ),
                                ),
                              ),
                            ],
                            actionsAlignment: MainAxisAlignment.center,
                            title: Text(
                              "الإبلاغ عن الطلب",
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                DropdownButton<String>(
                                  items: [
                                    DropdownMenuItem(
                                      child: Text(
                                        "الطاهي",
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                        ),
                                      ),
                                      value: 'الطاهي',
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        "عامل التوصيل",
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                        ),
                                      ),
                                      value: 'عامل التوصيل',
                                    ),
                                  ],
                                  onChanged: (selected) {
                                    if (selected == null) {
                                      setDialogState(() {
                                        _isSelectedReportedOnValid = false;
                                        _selectedReportedOnErrorMessage =
                                            'الرجاء اختيار المبلغ عنه';
                                      });
                                    } else {
                                      setDialogState(
                                        () {
                                          _isSelectedReportedOnValid = true;
                                          _reportedOn = selected;
                                        },
                                      );
                                    }
                                  },
                                  value: _reportedOn,
                                  hint: Text(
                                    "اختر المبلغ عنه",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),
                                  ),
                                ),
                                if (!_isSelectedReportedOnValid)
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 5.h,
                                    ),
                                    child: Text(
                                      _selectedReportedOnErrorMessage,
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                  ),
                                SizedBox(
                                  height: 100.h,
                                  child: TextField(
                                    controller: _reportTextFieldController,
                                    textInputAction: TextInputAction.done,
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontWeight: FontWeight.w300,
                                    ),
                                    maxLines: 6,
                                    decoration: InputDecoration(
                                      // LABEL
                                      labelText: 'سبب الإبلاغ',
                                      labelStyle: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontSize: 12.sp,
                                      ),

                                      alignLabelWithHint: true,

                                      // FILL COLOR
                                      filled: true,
                                      fillColor: Colors.white,

                                      contentPadding: EdgeInsets.symmetric(
                                        vertical: 10.h,
                                        horizontal: 10.w,
                                      ),

                                      // ENABLE BORDER
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.grey.withOpacity(0.5),
                                          width: 2,
                                        ),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(20.0),
                                        ),
                                      ),

                                      // ENABLE BORDER
                                      disabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.grey.withOpacity(0.5),
                                          width: 2,
                                        ),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(20.0),
                                        ),
                                      ),

                                      // FOCUSED BORDER
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          width: 2,
                                        ),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(20.0),
                                        ),
                                      ),
                                    ),
                                    onChanged: (reason) {
                                      if (reason.isNotEmpty) {
                                        setDialogState(
                                          () {
                                            _isReasonValid = true;
                                          },
                                        );
                                      }
                                    },
                                  ),
                                ),
                                if (!_isReasonValid)
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 5.h,
                                    ),
                                    child: Text(
                                      _reasonErrorMessage,
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  },
                  icon: const Text("إبلاغ"),
                ),
            ],
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
                      OrderDetails(
                        icon: Icons.list,
                        title: 'اشتراك',
                        value:
                            state.order!.subscriptionId != null ? "نعم" : "لا",
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
