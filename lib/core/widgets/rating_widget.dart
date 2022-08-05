import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultRatingBar extends StatelessWidget {
  final double? initialRating;
  final double? itemSize;
  final bool ignoreGestures;
  final bool withRatingCount;
  final int totalRating;
  final Function(double)? onRatingChanged;

  const DefaultRatingBar({
    Key? key,
    this.itemSize,
    this.onRatingChanged,
    this.initialRating,
    this.totalRating = 0,
    this.ignoreGestures = true,
    this.withRatingCount = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return withRatingCount
        ? Row(
            children: [
              RatingBar(
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
                itemSize: itemSize ?? 20.sp,
                itemCount: 5,
                initialRating: initialRating ?? 0,
                ignoreGestures: ignoreGestures,
                onRatingUpdate: onRatingChanged ?? (_) {},
              ),
              SizedBox(
                width: 10.w,
              ),
              Text("($totalRating)"),
            ],
          )
        : RatingBar(
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
            itemSize: itemSize ?? 20.sp,
            itemCount: 5,
            initialRating: initialRating ?? 0,
            ignoreGestures: ignoreGestures,
            onRatingUpdate: onRatingChanged ?? (_) {},
          );
  }
}
