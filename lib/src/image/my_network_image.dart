import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_loading/card_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyNetworkImage extends StatelessWidget {
  const MyNetworkImage({
    required this.url,
    super.key,
    this.width,
    this.height,
    this.borderColor,
    this.radius,
    this.iconSize,
    this.errorIcon,
  });

  final String url;
  final double? width;
  final double? height;
  final Color? borderColor;
  final double? radius;
  final double? iconSize;
  final Widget? errorIcon;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      width: width ?? 48.w,
      height: height ?? 48.w,
      fit: BoxFit.cover,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 8.r),
          border: Border.all(
            width: 1.sp,
            color: Color(0xFFDEE1F7),
          ),
        ),
        width: width ?? 48.w,
        height: height ?? 48.w,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius ?? 8.r),
          child: CachedNetworkImage(
            imageUrl: url,
            fit: BoxFit.cover,
          ),
        ),
      ),
      imageUrl: url,
      placeholder: (context, url) => CardLoading(
        height: height ?? 48.w,
        width: width ?? 48.w,
        borderRadius: BorderRadius.circular(radius ?? 8.r),
      ),
      errorWidget: (context, url, error) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 8.r),
          border: Border.all(
            width: 1.sp,
            color: Color(0xFFDEE1F7),
          ),
        ),
        width: width ?? 48.w,
        height: height ?? 48.w,
        child: errorIcon ??
            Icon(
              Icons.person,
              size: iconSize,
              color: Color(0xFF868AB3),
            ),
      ),
    );
  }
}
