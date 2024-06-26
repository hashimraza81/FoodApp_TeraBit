import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget buildSocialButton({
  required Color color,
  required String assetPath,
  required String text,
  required TextStyle textStyle,
  required VoidCallback onPressed,
}) {
  return Container(
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10.r),
      boxShadow: const [
        BoxShadow(
          color: Colors.black26, // Shadow color
          offset: Offset(0, 4), // Shadow position
          blurRadius: 8, // Shadow blur radius
          spreadRadius: 1, // Shadow spread radius
        ),
      ],
    ),
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        minimumSize: Size(351.w, 54.h),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            assetPath,
            height: 24.h,
            width: 24.w,
          ),
          SizedBox(width: 10.w),
          Text(text, style: textStyle),
        ],
      ),
    ),
  );
}
