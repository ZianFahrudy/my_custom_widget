import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDividerLine extends StatelessWidget {
  const MyDividerLine({
    super.key,
    this.color,
    this.thickness,
    this.withPadding = true,
  });

  final Color? color;
  final double? thickness;
  final bool? withPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          withPadding! ? EdgeInsets.symmetric(vertical: 12.w) : EdgeInsets.zero,
      child: Divider(
        height: 0.sp,
        thickness: thickness ?? 1.sp,
        color: color ?? const Color(0xffDEE1F7),
      ),
    );
  }
}
