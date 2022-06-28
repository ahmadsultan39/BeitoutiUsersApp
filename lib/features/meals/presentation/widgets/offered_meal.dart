import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/util/constants.dart';
import '../../../../core/widgets/custom_loader.dart';
import '../../domain/entities/home_meal.dart';

class OfferedMeal extends StatelessWidget {
  final HomeMeal meal;

  const OfferedMeal({Key? key, required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
      ),
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
                  color: Colors.black.withOpacity(0.2),
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
                Text(
                  meal.price.toString() + ' ل.س',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
