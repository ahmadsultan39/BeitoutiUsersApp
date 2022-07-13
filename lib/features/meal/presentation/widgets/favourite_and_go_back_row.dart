import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavouriteAndGoBackRow extends StatelessWidget {
  final bool isMealSaved;
  final Function removeMealFromFavourite;
  final Function addMealToFavourite;

  const FavouriteAndGoBackRow({
    Key? key,
    required this.isMealSaved,
    required this.removeMealFromFavourite,
    required this.addMealToFavourite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 60.h,
      left: 10.w,
      right: 10.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              if (isMealSaved) {
                removeMealFromFavourite();
              } else {
                addMealToFavourite();
              }
            },
            child: Container(
              height: 45.h,
              width: 45.h,
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor.withOpacity(0.8),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Icon(
                  isMealSaved ? Icons.favorite : Icons.favorite_outline_rounded,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              height: 45.h,
              width: 45.h,
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor.withOpacity(0.8),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
