import 'package:beitouti_users/core/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../injection.dart';
import '../bloc/cart.dart';
import '../widgets/cart_info.dart';

class OrderCartPage extends StatefulWidget {
  const OrderCartPage({Key? key}) : super(key: key);

  @override
  State<OrderCartPage> createState() => _OrderCartPageState();
}

class _OrderCartPageState extends State<OrderCartPage> {
  final _bloc = sl<CartBloc>();
  final TextEditingController _notesTextFieldController =
      TextEditingController();

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
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "طريقة الدفع:",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Radio<String>(
                                value: 'كاش',
                                groupValue: 'كاش',
                                onChanged: (_) {},
                                activeColor:
                                    Theme.of(context).colorScheme.secondary,
                              ),
                              Text(
                                'كاش',
                                style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "وقت التوصيل:",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              showTimePicker(
                                context: context,
                                initialTime:
                                    TimeOfDay.fromDateTime(DateTime.now()),
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
                        ],
                      ),
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
