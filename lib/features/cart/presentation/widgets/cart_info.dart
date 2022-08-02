import 'package:beitouti_users/features/cart/presentation/widgets/cart_info_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CartInfo extends StatelessWidget {
  final int mealsCost;
  final int deliveryFee;
  final VoidCallback onTap;
  final String? buttonText;

  const CartInfo({
    Key? key,
    required this.mealsCost,
    required this.deliveryFee,
    required this.onTap,
    this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 220.h,
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
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10.h,
              ),
              child: GestureDetector(
                onTap: onTap,
                child: Container(
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        buttonText ?? 'التالي',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      if (buttonText == null)
                        Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                          size: 28.sp,
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
