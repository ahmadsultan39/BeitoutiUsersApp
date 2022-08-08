import 'package:beitouti_users/core/util/generate_screen.dart';
import 'package:beitouti_users/core/widgets/image_checker.dart';
import 'package:beitouti_users/features/meals/domain/entities/home_subscribe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Subscribe extends StatelessWidget {
  final HomeSubscribe subscribe;

  const Subscribe({
    Key? key,
    required this.subscribe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
        vertical: 10.h,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            NameScreen.subscriptionScreen,
            arguments: subscribe,
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                ImageChecker(
                  imageUrl: subscribe.chef.profilePicture ?? '',
                  width: 50.w,
                  height: 50.h,
                  circle: false,
                  borderColor: Colors.black26,
                  borderRadius: 20,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      subscribe.name,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      subscribe.chef.name,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            SubscriptionInfo(
              title: 'التكلفة',
              value: subscribe.totalCost.toString() + ' ل.س',
            ),
            SubscriptionInfo(
              title: 'عدد الأيام',
              value: subscribe.daysNumber.toString(),
            ),
            SubscriptionInfo(
              title: 'تاريخ البدء:',
              value: subscribe.startsAt,
            ),
          ],
        ),
      ),
    );
  }
}

class SubscriptionInfo extends StatelessWidget {
  final String title;
  final String value;

  const SubscriptionInfo({
    Key? key,
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
        children: [
          Text(
            title,
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 5.w,
          ),
          Text(
            value,
            style: TextStyle(
              color: Theme.of(context).colorScheme.tertiary,
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
