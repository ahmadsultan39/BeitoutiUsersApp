import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvailabilityRow extends StatelessWidget {
  final bool isAvailable;

  const AvailabilityRow({
    Key? key,
    required this.isAvailable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 300.h,
      right: 10.w,
      child: Container(
        width: 120.w,
        height: 40.h,
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor.withOpacity(0.8),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                isAvailable ? "متاحة" : "غير متاحة",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Icon(
                Icons.circle,
                color: isAvailable ? Colors.green : Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
