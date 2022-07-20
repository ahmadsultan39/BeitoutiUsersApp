import 'package:beitouti_users/features/meal/presentation/widgets/not_available_dialog.dart';
import 'package:beitouti_users/features/meal/presentation/widgets/notes_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddToCartButton extends StatelessWidget {
  final Function(String) onTap;
  final String message;

  const AddToCartButton({
    Key? key,
    required this.onTap,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.h,
      ),
      child: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (_) => message.isEmpty
                ? NotesDialog(onTap: onTap)
                : NotAvailableDialog(
                    message: message,
                  ),
          );
        },
        child: Container(
          width: double.infinity,
          height: 60.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Theme.of(context).colorScheme.primary,
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.shopping_cart_rounded,
                  color: Theme.of(context).backgroundColor,
                  size: 20.sp,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "إضافة إلى السلة",
                  style: TextStyle(
                    color: Theme.of(context).backgroundColor,
                    fontSize: 18.sp,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
