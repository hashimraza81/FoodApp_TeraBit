import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/const/app_color.dart';

class SuperMenu extends StatelessWidget {
  const SuperMenu({
    super.key,
    required this.image,
    required this.text,
  });

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // height: 85.h,
            // width: 85.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10.r,
              ),
              color: AppColors.primary3.withOpacity(0.1),
              border: Border.all(
                color: AppColors.primary3,
                width: 2,
              ),
            ),
            child: Image.asset(
              image,
              height: 85.h,
              width: 85.w,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 12.sp,
              color: AppColors.text4,
              fontWeight: FontWeight.w400,
              fontFamily: 'poppins',
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
