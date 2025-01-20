import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyContainerButton extends StatelessWidget {
  const MyContainerButton({
    super.key,
    this.child,
    this.onTap,
    this.hPadding,
    this.vPadding,
    this.radius,
    this.height,
    this.width,
    this.color,
    this.margin,
  });

  final Widget? child;
  final void Function()? onTap;
  final double? hPadding;
  final double? vPadding;
  final double? radius;
  final double? height;
  final double? width;
  final Color? color;
  final EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(radius ?? 100.r),
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        margin: margin,
        padding: EdgeInsets.symmetric(
          horizontal: hPadding ?? 0.w,
          vertical: vPadding ?? 0.w,
        ),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            width: 1.sp,
            color: Color(0xFFC5C8E8),
          ),
          borderRadius: BorderRadius.circular(radius ?? 100.r),
        ),
        child: child,
      ),
    );
  }
}
