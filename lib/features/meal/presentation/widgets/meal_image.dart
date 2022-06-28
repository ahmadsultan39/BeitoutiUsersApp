import 'package:beitouti_users/core/util/constants.dart';
import 'package:beitouti_users/core/widgets/custom_loader.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MealImage extends StatelessWidget {
  final String imageUrl;

  const MealImage({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: Endpoints.imageUrl + imageUrl,
      fit: BoxFit.cover,
      height: 380.h,
      errorWidget: (_, __, ___) => const Icon(Icons.error),
      placeholder: (_, __) => Loader(size: 40.sp),
    );
  }
}
