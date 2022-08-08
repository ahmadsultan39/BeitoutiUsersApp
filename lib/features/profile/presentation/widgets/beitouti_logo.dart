import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BeitoutiLogo extends StatelessWidget {
  const BeitoutiLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/logo.png",
          width: 375.w,
          height: 100.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 8.h,
          ),
          child: Text(
            "بَيتوتي",
            style: TextStyle(
              color: Theme.of(context).colorScheme.tertiary,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
     
      ],
    );
  }
}
