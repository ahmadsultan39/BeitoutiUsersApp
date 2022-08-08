import 'package:beitouti_users/core/util/generate_screen.dart';
import 'package:beitouti_users/core/widgets/image_checker.dart';
import 'package:beitouti_users/features/meals/domain/entities/home_subscribe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AllSubscriptionTile extends StatelessWidget {
  final HomeSubscribe subscribe;

  const AllSubscriptionTile({
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
        child: Container(
          width: 375.w,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black38,
                offset: Offset(0, 5),
                blurRadius: 10,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      ImageChecker(
                        imageUrl: subscribe.chef.profilePicture ?? '',
                        width: 70.w,
                        height: 70.h,
                        circle: false,
                        borderColor: Colors.black26,
                        borderRadius: 20,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        subscribe.name,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
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
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SubscriptionInfo(
                  icon: Icons.date_range_rounded,
                  title: 'تاريخ البدء:',
                  value: subscribe.startsAt,
                ),
                SubscriptionInfo(
                  icon: MdiIcons.cashCheck,
                  title: 'التكلفة:',
                  value: subscribe.totalCost.toString() + ' ل.س',
                ),
                SubscriptionInfo(
                  icon: MdiIcons.numeric,
                  title: 'عدد الأيام:',
                  value: subscribe.daysNumber.toString(),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SubscriptionInfo extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const SubscriptionInfo({
    Key? key,
    required this.title,
    required this.icon,
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
          Icon(
            icon,
            color: Theme.of(context).colorScheme.secondary,
            size: 25.sp,
          ),
          SizedBox(
            width: 5.w,
          ),
          Text(
            title,
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: 15.sp,
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
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
