import 'package:beitouti_users/core/util/constants.dart';
import 'package:beitouti_users/features/cart/presentation/widgets/order_cart_row.dart';
import 'package:beitouti_users/features/cart/presentation/widgets/radio_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';

import '../../../../injection.dart';
import '../bloc/cart.dart';
import '../widgets/cart_info.dart';

class OrderCartPage extends StatefulWidget {
  const OrderCartPage({Key? key}) : super(key: key);

  @override
  State<OrderCartPage> createState() => _OrderCartPageState();
}

class _OrderCartPageState extends State<OrderCartPage> {
  final TextEditingController _notesTextFieldController =
      TextEditingController();

  final _bloc = sl<CartBloc>();

  final String _paymentMethod = 'كاش';

  String _selectedDeliveryTime = '';

  String _selectedDeliveryDate = 'اليوم';

  void _changeDeliveryDate(String? date) {
    if (date != null) {
      setState(() {
        _selectedDeliveryDate = date; // today or tomorrow
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
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
        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                "طلب السلة",
                style: TextStyle(
                  fontSize: 21.sp,
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.w,
                ),
                child: Column(
                  children: [
                    OrderCartRow(
                      value: RadioButton(
                        onChanged: (_) {},
                        value: 'كاش',
                        groupValue: _paymentMethod,
                      ),
                      title: "طريقة الدفع:",
                    ),
                    OrderCartRow(
                      value: Column(
                        children: [
                          RadioButton(
                            onChanged: _changeDeliveryDate,
                            value: 'اليوم',
                            groupValue: _selectedDeliveryDate,
                          ),
                          RadioButton(
                            onChanged: _changeDeliveryDate,
                            value: 'غداً',
                            groupValue: _selectedDeliveryDate,
                          ),
                        ],
                      ),
                      title: "تاريخ التوصيل:",
                    ),
                    OrderCartRow(
                      value: GestureDetector(
                        onTap: () {
                          showModalBottomSheet<TimeOfDay?>(
                            context: context,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              topLeft: Radius.circular(15),
                            )),
                            builder: (context) => TimePickerSpinner(
                              isForce2Digits: true,
                              is24HourMode: true,
                              minutesInterval: 60,
                              onTimeChange: (selectedTime) {
                                if (selectedTime.hour <= 9) {
                                  setState(() {
                                    _selectedDeliveryTime =
                                        "0" + selectedTime.hour.toString();
                                  });
                                } else {
                                  setState(() {
                                    _selectedDeliveryTime =
                                        selectedTime.hour.toString();
                                  });
                                }
                                print(_selectedDeliveryTime);
                              },
                            ),
                          );
                        },
                        child: Text(
                          'اختر وقت التوصيل',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      title: "وقت التوصيل:",
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 20.h,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 150.h,
                              child: TextField(
                                controller: _notesTextFieldController,
                                textInputAction: TextInputAction.done,
                                style: TextStyle(
                                  fontSize: 19.sp,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontWeight: FontWeight.w300,
                                ),
                                maxLines: 6,
                                decoration: InputDecoration(
                                  hintText: 'الملاحظات الخاصة بالوجبة',
                                  hintStyle: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
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
                                          .secondary,
                                      width: 2,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                    CartInfo(
                      deliveryFee: state.deliveryFee,
                      mealsCost: state.mealsCost,
                      buttonText: 'طلب السلة',
                      onTap: () {
                        // order cart
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
