import 'package:beitouti_users/core/util/generate_screen.dart';
import 'package:beitouti_users/features/meals/domain/entities/home_meal.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/widgets/custom_loader.dart';

class MealItem extends StatelessWidget {
  final HomeMeal meal;

  const MealItem({
    Key? key,
    required this.meal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
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
              width: 220.w,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CachedNetworkImage(
                    imageUrl: Endpoints.imageUrl + meal.image,
                    placeholder: (_, __) => const Loader(),
                    errorWidget: (_, __, ___) => const Icon(Icons.error),
                    fit: BoxFit.cover,
                    height: 150.w,
                    width: 220.w,
                  ),
                  Container(
                    height: 150.w,
                    width: 220.w,
                    color: Colors.black.withOpacity(0.3),
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
                  Positioned(
                    bottom: 10,
                    child: RatingBar(
                      ratingWidget: RatingWidget(
                        full: const Icon(
                          Icons.star,
                          color: Color(0xFFffa639),
                        ),
                        half: const Icon(
                          Icons.star,
                          color: Color(0xFFffa639),
                        ),
                        empty: const Icon(
                          Icons.star,
                          color: Colors.grey,
                        ),
                      ),
                      itemSize: 20,
                      itemCount: 5,
                      initialRating: meal.rating ?? 0.0,
                      ignoreGestures: true,
                      onRatingUpdate: (_) {},
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 220.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 120.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          meal.name,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          meal.chef.name,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
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
                          decoration: meal.discountPercentage != null
                              ? TextDecoration.lineThrough
                              : null,
                        ),
                      ),
                      if (meal.discountPercentage != null)
                        Text(
                          (meal.priceAfterDiscount).toString() + ' ل.س',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.tertiary,
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
