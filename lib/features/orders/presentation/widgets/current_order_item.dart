import 'package:beitouti_users/core/entities/order.dart';
import 'package:beitouti_users/features/orders/presentation/bloc/orders.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/util/generate_screen.dart';

class CurrentOrderItem extends StatelessWidget {
  final OrderEntity order;
  final OrdersBloc? bloc;

  const CurrentOrderItem({Key? key, required this.order,this.bloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.h,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            NameScreen.orderScreen,
            arguments: order.id,
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 10.h,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: order.chefImage!.isNotEmpty
                              ? CachedNetworkImage(
                                  imageUrl:
                                      Endpoints.imageUrl + order.chefImage!,
                                  fit: BoxFit.fitWidth,
                                )
                              : Image.asset(
                                  'assets/images/chef_hat.png',
                                  fit: BoxFit.fitWidth,
                                ),
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          height: 70.h,
                          width: 60.w,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "رقم الطلب: " + order.id.toString(),
                              style: TextStyle(
                                fontSize: 15.sp,
                              ),
                            ),
                            Text(
                              "اسم الطاهي: " + order.chefName,
                              style: TextStyle(
                                fontSize: 15.sp,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    if (!order.canBeCanceled!)
                      GestureDetector(
                        onTap: () {
                         bloc!.addCancelOrderEvent(order.id);
                        },
                        child: Icon(
                          Icons.delete,
                          color: Theme.of(context).colorScheme.tertiary,
                          size: 25.sp,
                        ),
                      ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                RowText(
                  text: "وقت الطلب:",
                  width: 200.w,
                  value: order.createdAt,
                ),
                RowText(
                  text: "الوقت المتوقع لوصول الطلب:",
                  width: 130.w,
                  value: order.selectedDeliveryTime,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RowText extends StatelessWidget {
  final String text;
  final String value;
  final double width;

  const RowText({
    Key? key,
    required this.text,
    required this.width,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        SizedBox(
          width: 5.w,
        ),
        SizedBox(
          width: width,
          child: Text(
            value,
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
