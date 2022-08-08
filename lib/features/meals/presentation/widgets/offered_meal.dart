import 'package:beitouti_users/core/widgets/default_rating_bar.dart';
import 'package:beitouti_users/core/widgets/image_checker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/util/generate_screen.dart';
import '../../domain/entities/home_meal.dart';

class OfferedMeal extends StatelessWidget {
  final HomeMeal meal;

  const OfferedMeal({Key? key, required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
        vertical: 15.h,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            NameScreen.mealScreen,
            arguments: meal.id,
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 150.w,
              width: 375.w,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                children: [
                  ImageChecker(
                    imageUrl: meal.image,
                    height: 150.h,
                    width: 375.w,
                    circle: false,
                  ),
                  Container(
                    height: 150.w,
                    width: 375.w,
                    color: Colors.black.withOpacity(0.4),
                  ),
                  Positioned(
                    top: 10.h,
                    left: 10.w,
                    child: Container(
                      height: 15.w,
                      width: 15.w,
                      decoration: BoxDecoration(
                        color:
                            meal.isAvailable ? Colors.green : Colors.grey[800],
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        bottom: 10.h,
                      ),
                      child: DefaultRatingBar(
                        initialRating: meal.rating,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              width: 375.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 200.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          meal.name,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          meal.chef.name,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontWeight: FontWeight.w400,
                            fontSize: 15.sp,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        meal.price.toString() + ' ل.س',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.tertiary,
                          fontWeight: meal.priceAfterDiscount != null
                              ? null
                              : FontWeight.bold,
                          fontSize:
                              meal.priceAfterDiscount != null ? 15.sp : 18.sp,
                          decoration: meal.priceAfterDiscount != null
                              ? TextDecoration.lineThrough
                              : null,
                        ),
                      ),
                      if (meal.priceAfterDiscount != null)
                        Text(
                          meal.priceAfterDiscount.toString() + ' ل.س',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.tertiary,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
