import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../core/util/generate_screen.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/empty_cart.png',
            color: Theme.of(context)
                .colorScheme
                .secondary
                .withOpacity(0.9),
            width: 150.w,
            fit: BoxFit.fitWidth,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 20.h,
            ),
            child: Text(
              "السلة الخاصة بك فارغة!\nقم بتجربة إضافة بعض الوجبات لتظهر لك هنا",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                height: 2.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 25.w,
            ),
            child: GestureDetector(
              onTap: (){
                Navigator.pushReplacementNamed(context, NameScreen.homeScreen);
              },
              child: Container(
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "عودة إلى صفحة الوجبات",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Icon(
                        MdiIcons.food,
                        color: Colors.white,
                        size: 22.sp,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
