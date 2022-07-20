import 'package:beitouti_users/features/cart/presentation/widgets/cart_info_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartInfo extends StatelessWidget {
  final int mealsCost;
  final int deliveryFee;

  const CartInfo({
    Key? key,
    required this.mealsCost,
    required this.deliveryFee,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.h,
      width: 375.w,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 10.h,
        ),
        child: Column(
          children: [
            const Divider(
              color: Colors.black26,
              thickness: 2,
            ),
            CartInfoItem(
              title: 'المجموع:',
              value: mealsCost.toString(),
            ),
            CartInfoItem(
              title: 'رسوم التوصيل:',
              value: deliveryFee.toString(),
            ),
            CartInfoItem(
              title: 'الإجمالي:',
              value: (mealsCost + deliveryFee).toString(),
            ),
          ],
        ),
      ),
    );
  }
}
