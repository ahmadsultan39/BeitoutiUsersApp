import 'package:beitouti_users/features/favourites/domain/entities/favourite_meal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/generate_screen.dart';
import '../../../../core/widgets/image_checker.dart';

class FavouriteTile extends StatelessWidget {
  final FavouriteMeal meal;
  final Function(int) removeFromFavourite;

  const FavouriteTile({
    Key? key,
    required this.meal,
    required this.removeFromFavourite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 20.h,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            NameScreen.mealScreen,
            arguments: meal.id,
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 10),
                blurRadius: 10,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 10.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ImageChecker(
                      imageUrl: meal.imageUrl,
                      height: 60.h,
                      width: 50.w,
                    ),
                    SizedBox(width: 10.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          meal.name,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        Text(
                          meal.chefName,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    removeFromFavourite(meal.id);
                  },
                  icon: Icon(
                    Icons.favorite_rounded,
                    color: Colors.red,
                    size: 25.sp,
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
