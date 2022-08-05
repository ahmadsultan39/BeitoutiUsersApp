import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Loader extends StatelessWidget {
  final double? size;

  const Loader({Key? key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.hexagonDots( // or hexagonDots
        color: Theme.of(context).colorScheme.secondary,
        size: size ?? 40.sp,
      ),
    );
  }
}
