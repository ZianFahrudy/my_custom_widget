import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    this.child,
    this.margin,
    this.elevation,
    this.borderColor,
    this.vPadding,
    this.hPadding,
    this.color,
    this.onTap,
    this.radius,
  });

  final Widget? child;
  final EdgeInsets? margin;
  final double? elevation;
  final Color? borderColor;
  final double? vPadding;
  final double? radius;
  final double? hPadding;
  final Color? color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: color ?? Colors.white,
        elevation: elevation ?? 2,
        margin: margin ?? EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.sp,
            color: borderColor ?? Color(0xFFDEE1F7),
          ),
          borderRadius: BorderRadius.circular(radius ?? 12.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: hPadding ?? 12.sp,
            vertical: vPadding ?? 12.sp,
          ),
          child: child,
        ),
      ),
    );
  }
}
