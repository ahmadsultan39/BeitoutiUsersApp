import 'package:beitouti_users/core/entities/order_meal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/default_rating_bar.dart';
import '../../../../core/widgets/image_checker.dart';

class OrderMealItem extends StatefulWidget {
  final OrderMeal meal;
  final bool canBeEvaluated;
  final Function(int, double, String) sendRate;

  const OrderMealItem({
    Key? key,
    required this.meal,
    required this.canBeEvaluated,
    required this.sendRate,
  }) : super(key: key);

  @override
  State<OrderMealItem> createState() => _OrderMealItemState();
}

class _OrderMealItemState extends State<OrderMealItem> {
  final _notesTextFieldController = TextEditingController();
  double? _rate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
        vertical: 10.h,
      ),
      child: Container(
        width: 375.w,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Row(
                children: [
                  ImageChecker(
                    imageUrl: widget.meal.image,
                    width: 100.w,
                    height: 100.h,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "اسم الوجبة: ",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(
                            width: 140.w,
                            child: Text(
                              widget.meal.name,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: 14.sp,
                              ),
                              overflow: TextOverflow.fade,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "السعر: ",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 14.sp,
                            ),
                          ),
                          Text(
                            widget.meal.price.toString() + ' ل.س',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "الكمية: ",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 14.sp,
                            ),
                          ),
                          Text(
                            widget.meal.quantity.toString(),
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              if (widget.meal.userRate == null && widget.canBeEvaluated)
                Column(
                  children: [
                    SizedBox(height: 5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'ما هو تقييمك للوجبة؟',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.tertiary,
                            fontSize: 15.sp,
                          ),
                        ),
                        DefaultRatingBar(
                          ignoreGestures: false,
                          itemSize: 25.sp,
                          onRatingChanged: (rate) {
                            setState(() {
                              _rate = rate;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      height: 100.h,
                      child: TextField(
                        controller: _notesTextFieldController,
                        textInputAction: TextInputAction.done,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Theme.of(context).colorScheme.secondary,
                          fontWeight: FontWeight.w400,
                        ),
                        maxLines: 6,
                        decoration: InputDecoration(
                          // LABEL
                          labelText: 'ماهي ملاحظاتك عن الوجبة؟',
                          labelStyle: TextStyle(
                            color: Theme.of(context).colorScheme.tertiary,
                            fontSize: 14.sp,
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
                              color: Theme.of(context).colorScheme.tertiary,
                              width: 2,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    if (_rate != null)
                      GestureDetector(
                        onTap: () {
                          widget.sendRate(
                            widget.meal.id,
                            _rate!,
                            _notesTextFieldController.text,
                          );
                        },
                        child: Container(
                          width: 375.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "إرسال التقييم",
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
