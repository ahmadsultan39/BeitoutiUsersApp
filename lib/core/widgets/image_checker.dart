import 'package:beitouti_users/core/util/constants.dart';
import 'package:beitouti_users/core/widgets/custom_loader.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageChecker extends StatelessWidget {
  final String imageUrl;
  final double? height;
  final double? width;
  final double? radius;
  final Color borderColor;
  final BoxFit? fit;

  const ImageChecker({
    Key? key,
    required this.imageUrl,
    this.height,
    this.width,
    this.radius,
    this.fit,
    this.borderColor = Colors.transparent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor,
        ),
      ),
      child: imageUrl.isNotEmpty
          ? CachedNetworkImage(
              imageUrl: Endpoints.imageUrl + imageUrl,
              errorWidget: (_, __, ___) => Icon(Icons.error, size: 25.sp),
              placeholder: (_, __) => Loader(size: 25.sp),
              height: height ?? 150.h,
              width: width ?? 150.w,
              fit: fit ?? BoxFit.cover,
            )
          : Image.asset(
              'assets/images/logo.png',
              color: Colors.grey,
              height: height ?? 150.h,
              width: width ?? 150.w,
              fit: fit ?? BoxFit.contain,
            ),
    );
  }
}
