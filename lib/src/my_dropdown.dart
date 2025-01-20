import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:my_custom_widgets/src/my_typography.dart';

class MyDropdown extends StatelessWidget {
  const MyDropdown({
    required this.title,
    this.fillColor,
    super.key,
    this.mandatory = true,
    this.hintText,
    this.noTitle = false,
    this.radius,
    this.items,
    this.height,
    this.onChanged,
    this.initialValue,
    this.validator,
    this.iconStyleData,
    this.suffixWidget,
    this.hintStyle,
    this.style,
    this.prefixIcon,
    this.enabled = true,
  });

  final String title;
  final Color? fillColor;
  final bool? mandatory;
  final String? hintText;
  final bool? noTitle;
  final double? radius;
  final List<DropdownMenuItem<String?>>? items;
  final double? height;
  final void Function(String?)? onChanged;
  final ValueNotifier<String?>? initialValue;
  final String? Function(String?)? validator;
  final IconStyleData? iconStyleData;
  final Widget? suffixWidget;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final Widget? prefixIcon;
  final bool? enabled;
  @override
  Widget build(BuildContext context) {
    final focusBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius ?? 12.r),
      borderSide: const BorderSide(
        color: Color(0xFFC5C8E8),
      ),
    );
    final enableBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius ?? 12.r),
      borderSide: const BorderSide(
        color: Color(0xFFA9ADD1),
      ),
    );
    final errorBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius ?? 12.r),
      borderSide: const BorderSide(
        color: Color(0xFFB72F49),
      ),
    );
    return ValueListenableBuilder(
      valueListenable: initialValue!,
      builder: (context, _, __) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              if (!noTitle!)
                Text(
                  title,
                  style: MyTypography.textMMedium.copyWith(
                    color: Color(0xFF191C55),
                  ),
                ),
              if (!noTitle! && mandatory!)
                Text(
                  '*',
                  style: MyTypography.textMMedium.copyWith(
                    color: Color(0xFFDB4454),
                  ),
                ),
            ],
          ),
          if (!noTitle!) Gap(8.sp),
          SizedBox(
            height: height,
            child: DropdownButtonFormField2<String?>(
              isExpanded: true,
              isDense: false,
              value: initialValue!.value,
              style: style,
              iconStyleData: iconStyleData ??
                  IconStyleData(
                    iconSize: 20.sp,
                    icon: Row(
                      children: [
                        suffixWidget ?? const SizedBox(),
                        const Icon(Icons.arrow_drop_down_sharp),
                      ],
                    ),
                  ),
              decoration: InputDecoration(
                prefixIcon: prefixIcon,
                prefixIconConstraints: const BoxConstraints(
                  minWidth: 25,
                  minHeight: 25,
                ),
                enabled: enabled!,
                focusedBorder: focusBorder,
                fillColor: fillColor ?? Colors.white,
                enabledBorder: enableBorder,
                errorBorder: errorBorder,
                focusedErrorBorder: errorBorder,
                prefixText: '',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 0.sp, vertical: 0.sp),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.r),
                ),
              ),
              buttonStyleData: ButtonStyleData(
                padding: EdgeInsets.only(right: 10.w),
              ),
              validator: validator,
              onChanged: onChanged,
              dropdownStyleData: DropdownStyleData(
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    15.r,
                  ),
                ),
              ),
              hint: Text(
                hintText ?? title,
                textAlign: TextAlign.start,
                style: hintStyle ??
                    MyTypography.textSMedium.copyWith(
                      color: Color(0xFF868AB3),
                      fontWeight: FontWeight.bold,
                    ),
              ),
              items: items,
            ),
          ),
        ],
      ),
    );
  }
}

final dropdownItems = <String>[
  '01',
  '02',
  '03',
  '04',
  '05',
];
