import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllRightsReserved extends StatelessWidget {
  const AllRightsReserved({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 12.h,
      ),
      child: Column(
        children: [
          Text(
            "صنع بواسطة Baitoutee Team",
            style: TextStyle(
              color: Theme.of(context).colorScheme.tertiary,
              fontWeight: FontWeight.w500,
              fontSize: 15.sp,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "جميع الحقوق محفوظة",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.tertiary,
                  fontWeight: FontWeight.w500,
                  fontSize: 13.sp,
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Icon(
                Icons.copyright_rounded,
                size: 22.sp,
                color: Theme.of(context).colorScheme.tertiary,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
