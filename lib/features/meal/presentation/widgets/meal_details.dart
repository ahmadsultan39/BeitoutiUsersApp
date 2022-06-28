import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MealDetails extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const MealDetails({
    Key? key,
    required this.icon,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 5.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: Theme.of(context).colorScheme.primary,
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            "$title ",
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          SizedBox(
            width: 100.w,
            child: Text(
              value,
              style: TextStyle(
                color: Theme.of(context).colorScheme.tertiary,
              ),
              overflow: TextOverflow.visible,
            ),
          )
        ],
      ),
    );
  }
}
