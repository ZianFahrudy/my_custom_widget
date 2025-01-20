import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({
    required this.text,
    super.key,
    this.onPressed,
    this.radius,
    this.textColor,
    this.borderColor,
    this.height,
    this.width,
    this.color,
    this.style,
  });

  final void Function()? onPressed;

  final String text;
  final double? radius;
  final Color? textColor;
  final Color? borderColor;
  final Color? color;
  final double? height;
  final double? width;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 46.sp,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: onPressed == null
              ? WidgetStateProperty.all(const Color(0xffDEE1F7))
              : WidgetStateProperty.all(color),
          side: WidgetStateProperty.all(
            BorderSide(
              width: 1.w,
              color: borderColor ?? Colors.transparent,
            ),
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius ?? 10.r),
            ),
          ),
        ),
        child: Text(
          text,
          style: style ??
              Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: onPressed == null
                        ? const Color(0xff868AB3)
                        : textColor ?? Colors.white,
                  ),
        ),
      ),
    );
  }
}
