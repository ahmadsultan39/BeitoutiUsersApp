import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotAvailableDialog extends StatelessWidget {
  final String message;

  const NotAvailableDialog({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      title: Center(
        child: Text(
          "خطأ",
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
            fontSize: 21.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      actionsPadding: EdgeInsets.symmetric(
        vertical: 10.h,
        horizontal: 20.w,
      ),
      content: Text(
        message,
        style: TextStyle(
          fontSize: 16.sp,
        ),
        textAlign: TextAlign.center,
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            width: 160.w,
            height: 40.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Center(
              child: Text(
                "عودة",
                style: TextStyle(
                  color: Theme.of(context).backgroundColor,
                  fontSize: 15.sp,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
