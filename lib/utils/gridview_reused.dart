import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/const/app_color.dart';
import 'package:food_delivery_app/extension/sizebox_extension.dart';

Widget buildGridItem(String image, String label, VoidCallback onTap) {
  return InkWell(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            image,
            height: 55.h,
            width: 55.w,
          ),
          10.ph,
          Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              color: AppColors.text1,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}
