import 'package:beitouti_users/core/util/generate_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/image_checker.dart';
import '../../../../core/widgets/default_rating_bar.dart';
import '../../domain/entities/subscription_meal.dart';

class SubscriptionMealItem extends StatelessWidget {
  final SubscriptionMeal meal;
  final int dayNumber;

  const SubscriptionMealItem({
    Key? key,
    required this.meal,
    required this.dayNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(NameScreen.mealScreen,arguments: meal.mealId),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 10.h,
          horizontal: 20.w,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 5),
                blurRadius: 10,
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10.h,
              horizontal: 5.w,
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 55.w,
                  child: Text(
                    "اليوم $dayNumber",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.tertiary,
                      fontWeight: FontWeight.w500,
                      fontSize: 15.sp,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                ImageChecker(
                  imageUrl: meal.image,
                  height: (50.h + 50.w) / 2,
                  width: (50.h + 50.w) / 2,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 70.w,
                      child: Text(
                        meal.name,
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      width: 70.w,
                      child: Text(
                        meal.mealDate.substring(0, 10),
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                  ],
                ),
                DefaultRatingBar(
                  initialRating: meal.rating,
                  withRatingCount: true,
                  totalRating: meal.ratesCount,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
