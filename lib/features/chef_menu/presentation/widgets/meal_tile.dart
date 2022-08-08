
import 'package:beitouti_users/features/chef_menu/domain/entities/chef_meal.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/widgets/custom_loader.dart';
import '../bloc/chef_menu.dart';

class MealTile extends StatefulWidget {
  final ChefMeal meal;
  final ChefMenuBloc bloc;

  const MealTile(this.meal, this.bloc, {Key? key}) : super(key: key);

  @override
  State<MealTile> createState() => _MealTileState();
}

class _MealTileState extends State<MealTile> {


  @override
  Widget build(BuildContext context) {
    bool? value = widget.meal.isAvailable;
    return BlocBuilder<ChefMenuBloc, ChefMenuState>(
      bloc: widget.bloc,
      builder: (context, state) {
        return Center(
          child: Container(
            width: 360.w,
            margin: EdgeInsets.symmetric(vertical: 12.h),
            child: Material(
              clipBehavior: Clip.hardEdge,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              elevation: 5,
              child: Row(children: [
                    Container(
                      margin: const EdgeInsets.all(8),
                      height: 75.w,
                      width: 75.w,
                      clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(20))),
                      child: CachedNetworkImage(
                        imageUrl: Endpoints.imageUrl + widget.meal.image,
                        fit: BoxFit.cover,
                        errorWidget: (ctx, _, error) =>
                        const Icon(Icons.error),
                        placeholder: (ctx, _) => const Loader(),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.meal.name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          widget.meal.discountPercentage == null ||
                              widget.meal.discountPercentage == 0
                              ? Text(widget.meal.price.toString(),
                              style: TextStyle(fontSize: 16.sp))
                              : Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                  widget.meal.priceAfterDiscount
                                      .toString(),
                                  style: TextStyle(fontSize: 16.sp)),
                              SizedBox(
                                width: 15.w,
                              ),
                              Text(widget.meal.price.toString(),
                                  style: TextStyle(
                                      decoration:
                                      TextDecoration.lineThrough,
                                      fontSize: 12.sp)),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 20.sp,
                              ),
                                Text(
                                  " ${widget.meal.rating?.round() ?? 0} (${widget.meal.ratesCount})",
                                  style: TextStyle(fontSize: 14.sp),
                                )
                            ],
                          )
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        );
      },
    );
  }
}
