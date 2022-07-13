import 'package:beitouti_users/features/chef_menu/domain/entities/subscription.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../bloc/chef_menu.dart';

class SubscriptionTile extends StatelessWidget {
  final Subscription subscription;
  final ChefMenuBloc bloc;

  const SubscriptionTile(
      {Key? key, required this.subscription, required this.bloc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(20),
      height: 275.h,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0),
              blurRadius: 6.0,
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                subscription.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              Row(
                children: [
                  Icon(Icons.star,color: Colors.yellow,),
                  Text(
                    " ${subscription.rating?.round() ?? 0} (${subscription.ratingCount})",
                    style: TextStyle(
                      fontSize: 18.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            " - عدد أيام الاشتراك : ${subscription.daysNumber}",
            style: TextStyle(
              fontSize: 16.sp,
            ),
          ),
          Text(
            " - توقيت الوجبات : ${subscription.mealDeliveryTime.substring(0,5)}",
            style: TextStyle(
              fontSize: 16.sp,
            ),
          ),
          Text(
            " - بداية الاشتراك : ${subscription.startDate}",
            style: TextStyle(
              fontSize: 16.sp,
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.circle,
                color: subscription.isAvailable
                    ? Colors.green
                    : Colors.red,
                size: 16.sp,
              ),
              Text(
                subscription.isAvailable
                    ? " متاح"
                    : " مغلق",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16.sp,
                ),
              ),
            ],
          ),
          Spacer(),
          Text(
            "سعر الاشتراك ${subscription.totalCost} ل.س",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.sp,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ],
      ),
    );
  }
}
