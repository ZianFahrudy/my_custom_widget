import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_custom_widgets/src/my_typography.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    required this.title,
    this.actions,
    super.key,
    this.backgroundColor,
    this.leading = true,
    this.bottom,
    this.titleColor,
    this.titleSize,
    this.elevation,
    this.appBarHeight = kToolbarHeight,
    this.centerTitle,
    this.logo = false,
    this.drawer = false,
    this.systemOverlayStyle,
    this.leadingWidget,
    this.titleWidget,
  });
  final Color? backgroundColor;
  final String title;
  final Color? titleColor;
  final double? titleSize;
  final List<Widget>? actions;
  final bool? leading;
  final PreferredSizeWidget? bottom;
  final double? elevation;
  final double? appBarHeight;
  final bool? centerTitle;
  final bool? logo;
  final bool? drawer;
  final SystemUiOverlayStyle? systemOverlayStyle;
  final Widget? leadingWidget;
  final Widget? titleWidget;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centerTitle ?? false,
      elevation: elevation ?? 0,

      // leadingWidth: 50.sp,
      leading: drawer!
          ? Padding(
              padding: EdgeInsets.only(left: 0.w),
              child: Builder(
                builder: (ctx) {
                  return IconButton(
                    onPressed: () {
                      Scaffold.of(ctx).openDrawer();
                    },
                    icon: const Icon(
                      Icons.menu,
                      // color: MyColors.black,
                    ),
                  );
                },
              ),
            )
          : logo!
              ? Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  // child: MyAssets.img.logo.image(),
                )
              : leading!
                  ? GestureDetector(
                      onTap: () => Get.back<void>(),
                      child: Icon(
                        Icons.arrow_back,
                        size: 25.w,
                        color: titleColor ?? Color(0xFF616699),
                      ),
                    )
                  : leadingWidget,
      automaticallyImplyLeading: leading ?? false,
      title: titleWidget ??
          Text(
            title,
            style: MyTypography.headingS.copyWith(color: Color(0xFF191C55)),
          ),
      backgroundColor: backgroundColor ?? Colors.white,
      actions: actions,
      bottom: bottom,
      systemOverlayStyle: systemOverlayStyle ??
          const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight!);
}
