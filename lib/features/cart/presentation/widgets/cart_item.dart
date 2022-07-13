import 'package:beitouti_users/core/models/cart_item_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/widgets/custom_loader.dart';

class CartItem extends StatelessWidget {
  final int index;
  final CartItemModel item;
  final Function(int, int) increase;
  final Function(int, int) decrease;
  final Function(int) delete;

  const CartItem({
    Key? key,
    required this.item,
    required this.increase,
    required this.decrease,
    required this.index,
    required this.delete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 20.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: CachedNetworkImage(
              imageUrl: Endpoints.imageUrl + item.mealImage,
              width: 90.w,
              height: 90.h,
              fit: BoxFit.cover,
              placeholder: (_, __) => Loader(size: 25.sp),
              errorWidget: (_, __, ___) => Icon(Icons.error, size: 25.sp),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.mealName,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  (item.mealCost * item.mealQuantity).toString() + " ل.س",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  width: 225.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              increase(index, item.id);
                            },
                            child: Container(
                              height: 25.w,
                              width: 25.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Theme.of(context).backgroundColor,
                              ),
                              child: Center(
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                            ),
                            child: Text(
                              item.mealQuantity.toString(),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              decrease(index, item.id);
                            },
                            child: Container(
                              height: 25.w,
                              width: 25.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Theme.of(context).backgroundColor,
                              ),
                              child: Center(
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          delete(item.id);
                        },
                        child: Icon(
                          Icons.delete_rounded,
                          size: 22.sp,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
