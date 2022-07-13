import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NameAndPrice extends StatelessWidget {
  final String name;
  final String chefName;
  final int price;
  final int? priceAfterDiscount;

  const NameAndPrice({
    Key? key,
    required this.name,
    required this.chefName,
    required this.price,
    required this.priceAfterDiscount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              chefName,
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 20.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  price.toString(),
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: priceAfterDiscount != 0 ? 20.sp : 22.sp,
                    fontWeight: FontWeight.bold,
                    decoration: priceAfterDiscount != null
                        ? TextDecoration.lineThrough
                        : null,
                  ),
                ),
                if (priceAfterDiscount == null)
                  Text(
                    " ل.س",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  )
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            if (priceAfterDiscount != null)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    (priceAfterDiscount).toString(),
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    " ل.س",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
          ],
        ),
      ],
    );
  }
}
