import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotesDialog extends StatefulWidget {
  final Function(String) onTap;

  const NotesDialog({Key? key, required this.onTap}) : super(key: key);

  @override
  State<NotesDialog> createState() => _NotesDialogState();
}

class _NotesDialogState extends State<NotesDialog> {
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
        child: Text(
          "ملاحظات",
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
            // // LABEL
            // labelText: 'labelText',
            // labelStyle: TextStyle(
            //   color: Theme.of(context).colorScheme.primary,
            //   fontSize: 12.sp,
            // ),
            //
            // // HINT
            // hintText: 'hintText',
            // hintStyle: TextStyle(
            //   color: Colors.grey,
            //   fontSize: 12.sp,
            //   fontWeight: FontWeight.w300,
            // ),

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
          onTap: () {
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
                "إضافة إلى السلة",
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
