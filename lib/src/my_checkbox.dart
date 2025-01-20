// ignore_for_file: avoid_positional_boolean_parameters

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCheckBox extends StatelessWidget {
  const MyCheckBox({super.key, this.value = false, this.onTap});

  final bool? value;
  final void Function(bool value)? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!(value!);
      },
      child: Container(
        width: 20.w,
        height: 20.w,
        decoration: BoxDecoration(
          color: value! ? Color(0xFF191C55) : Colors.white,
          borderRadius: BorderRadius.circular(4.r),
          border: !value!
              ? Border.all(
                  width: 1.5.spMin,
                  color: Color(0xFF191C55),
                )
              : null,
        ),
        child: value!
            ? Icon(
                Icons.check,
                size: 18.sp,
                color: Colors.white,
              )
            : const SizedBox(),
      ),
    );
  }
}
