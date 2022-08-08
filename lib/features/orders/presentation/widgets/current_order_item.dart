import 'package:beitouti_users/core/entities/order.dart';
import 'package:beitouti_users/core/util/enums.dart';
import 'package:beitouti_users/core/widgets/image_checker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/generate_screen.dart';

class CurrentOrderItem extends StatelessWidget {
  final OrderEntity order;
  final Function(int)? cancel;
  final bool previous;

  const CurrentOrderItem({
    Key? key,
    required this.order,
    this.cancel,
    this.previous = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.h,
        horizontal: 15.w,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            NameScreen.orderScreen,
            arguments: order.id,
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, 10),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 10.h,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ImageChecker(
                          imageUrl: order.chefImage ?? '',
                          width: 50.w,
                          height: 50.h,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "رقم الطلب: " + order.id.toString(),
                              style: TextStyle(
                                fontSize: 15.sp,
                              ),
                            ),
                            Text(
                              "اسم الطاهي: " + order.chefName,
                              style: TextStyle(
                                fontSize: 15.sp,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    if (order.canBeCanceled!)
                      GestureDetector(
                        onTap: () {
                          cancel!(order.id);
                        },
                        child: Icon(
                          Icons.delete,
                          color: Theme.of(context).colorScheme.tertiary,
                          size: 25.sp,
                        ),
                      ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                RowText(
                  text: "حالة الطلب:",
                  width: 130.w,
                  value: orderStatusToMessage(order.status),
                ),
                RowText(
                  text: "وقت الطلب:",
                  width: 200.w,
                  value: order.createdAt.substring(0, 10) +
                      " " +
                      order.createdAt.substring(11, 16),
                ),
                if(!previous)
                RowText(
                  text: "الوقت المتوقع لوصول الطلب:",
                  width: 130.w,
                  value: order.selectedDeliveryTime,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RowText extends StatelessWidget {
  final String text;
  final String value;
  final double width;

  const RowText({
    Key? key,
    required this.text,
    required this.width,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        SizedBox(
          width: 5.w,
        ),
        SizedBox(
          width: width,
          child: Text(
            value,
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
            ),
            overflow: TextOverflow.fade,
          ),
        ),
      ],
    );
  }
}
