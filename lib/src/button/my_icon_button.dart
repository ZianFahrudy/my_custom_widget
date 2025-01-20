import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyIconButton extends StatelessWidget {
  const MyIconButton({
    super.key,
    this.onTap,
    this.icon,
    this.width,
    this.radius,
    this.color,
    this.iconColor,
    this.borderColor,
  });

  final void Function()? onTap;
  final Widget? icon;
  final double? width;
  final double? radius;
  final Color? color;
  final Color? iconColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(radius ?? 48.r),
      onTap: onTap,
      child: Container(
        width: width ?? 48.sp,
        height: width ?? 48.sp,
        alignment: Alignment.center,
        // color: color,
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          border: Border.all(
            color: borderColor ?? Colors.white,
          ),
          shape: BoxShape.circle,
          // borderRadius: BorderRadius.circular(radius ?? 10.r),
        ),
        child: icon ??
            Icon(
              Icons.arrow_back,
              color: iconColor ?? Color(0xFF616699),
            ),
      ),
    );
  }
}
