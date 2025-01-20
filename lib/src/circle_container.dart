import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleContainer extends StatelessWidget {
  const CircleContainer({
    super.key,
    this.width,
    this.height,
    this.child,
    this.padding,
    this.radius,
    this.color,
    this.borderColor,
    this.margin,
    this.decorationImage,
  });

  final double? width;
  final double? height;
  final Widget? child;
  final double? padding;
  final EdgeInsets? margin;
  final double? radius;
  final Color? color;
  final Color? borderColor;
  final DecorationImage? decorationImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 40.w,
      height: height ?? 40.w,
      margin: margin,
      padding: EdgeInsets.all(padding ?? 8.w),
      decoration: BoxDecoration(
        color: color ?? const Color(0xffEEF0FB),
        shape: BoxShape.circle,
        image: decorationImage,
        border: Border.all(
          color: borderColor ?? const Color(0xffDEE1F7),
        ),
      ),
      child: child,
    );
  }
}
