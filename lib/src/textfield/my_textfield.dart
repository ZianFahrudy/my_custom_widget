// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:my_custom_widgets/src/my_typography.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    required this.title,
    required this.controller,
    this.focusNode,
    super.key,
    this.textInputType,
    this.hint,
    this.note,
    this.validator,
    this.inputFormatters,
    this.prefix,
    this.prefixIcon,
    this.noTitle = false,
    this.maxLines,
    this.onChanged,
    this.fillColor,
    this.mandatory = true,
    this.onTap,
    this.suffix,
    this.suffixIcon,
    this.enabled = true,
    this.maxLength,
    this.contentPadding,
    this.bottomMargin = true,
    this.colorEnableBorder,
    this.colorFocusBorder,
    this.readOnly,
    this.enabledBorder,
    this.focusedBorder,
    this.disabledBorder,
    this.obscureText,
    this.errorBorder,
    this.suffixIconConstraints,
  });
  final String title;
  final TextInputType? textInputType;
  final String? hint;
  final String? note;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? prefix;
  final Widget? prefixIcon;
  final Widget? suffix;
  final Widget? suffixIcon;
  final bool? noTitle;
  final int? maxLines;
  final Color? fillColor;
  final bool? mandatory;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final bool? enabled;
  final int? maxLength;
  final EdgeInsetsGeometry? contentPadding;
  final bool? bottomMargin;
  final FocusNode? focusNode;
  final Color? colorFocusBorder;
  final Color? colorEnableBorder;
  final bool? readOnly;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? disabledBorder;
  final bool? obscureText;
  final InputBorder? errorBorder;
  final BoxConstraints? suffixIconConstraints;
  @override
  Widget build(BuildContext context) {
    final focusBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: BorderSide(
        color: colorFocusBorder ?? Color(0xFFC5C8E8),
      ),
    );
    final enableBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: BorderSide(
        color: colorEnableBorder ?? Color(0xFFC5C8E8),
      ),
    );
    final disableBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: BorderSide(
        color: colorEnableBorder ?? Color(0xFFC5C8E8),
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (!noTitle!)
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: MyTypography.textMMedium.copyWith(
                      color: Color(0xFF191C55),
                    ),
                  ),
                  if (mandatory!)
                    Text(
                      '*',
                      style: MyTypography.textMMedium.copyWith(
                        color: Color(0xFFDB4454),
                      ),
                    ),
                ],
              ),
              Gap(8.w),
            ],
          ),
        TextFormField(
          validator: validator,
          controller: controller,
          obscureText: obscureText ?? false,
          keyboardType: textInputType ?? TextInputType.text,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          style: MyTypography.textMMedium,
          focusNode: focusNode,
          readOnly: readOnly ?? false,
          inputFormatters: inputFormatters,
          onChanged: onChanged,
          onTap: onTap,
          maxLines: maxLines,
          maxLength: maxLength,
          decoration: InputDecoration(
            suffixIconConstraints: suffixIconConstraints,
            prefix: prefix,
            counterText: '',
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            suffix: suffix,
            filled: true,
            enabled: enabled!,
            contentPadding: contentPadding ??
                EdgeInsets.symmetric(horizontal: 15.sp, vertical: 8.sp),
            fillColor: fillColor ?? Colors.white,
            focusedBorder: focusedBorder ?? focusBorder,
            enabledBorder: enabledBorder ?? enableBorder,
            disabledBorder: disabledBorder ?? disableBorder,
            focusedErrorBorder: errorBorder,
            errorBorder: errorBorder,
            hintText: hint ?? title,
            hintStyle: MyTypography.textMMedium.copyWith(
              color: Color(0xFF868AB3),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
          ),
        ),
        if (bottomMargin!) Gap(20.w),
      ],
    );
  }
}
