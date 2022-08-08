import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubscribeDialog extends StatefulWidget {
  final Function(String) onTap;

  const SubscribeDialog({Key? key, required this.onTap}) : super(key: key);

  @override
  State<SubscribeDialog> createState() => _SubscribeDialogState();
}

class _SubscribeDialogState extends State<SubscribeDialog> {
  final TextEditingController _notesTextFieldController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      title: Center(
        child: Column(
          children: [
            Text(
              "إضافة ملاحظات",
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontSize: 21.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.h),
            Text(
              "إن تكلفة الاشتراك تتضمن كلفة التوصيل، ويجب دفع كامل ثمن الاشتراك عند اول عملية توصيل",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 14.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      actionsPadding: EdgeInsets.symmetric(
        vertical: 10.h,
        horizontal: 20.w,
      ),
      content: SizedBox(
        height: 100.h,
        child: TextField(
          controller: _notesTextFieldController,
          textInputAction: TextInputAction.done,
          style: TextStyle(
            fontSize: 19.sp,
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.w300,
          ),
          maxLines: 6,
          decoration: InputDecoration(
            // LABEL
            labelText: 'الملاحظات الخاصة بالاشتراك',
            labelStyle: TextStyle(
              color: Theme.of(context).colorScheme.primary,
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
                color: Theme.of(context).colorScheme.primary,
                width: 2,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
          ),
        ),
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        GestureDetector(
          onTap: () async {
            widget.onTap(_notesTextFieldController.text);
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
                "اشتراك",
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
