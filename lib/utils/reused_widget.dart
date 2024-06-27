import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/const/app_color.dart';

class Option extends StatelessWidget {
  const Option({
    super.key,
    required this.image,
    this.text,
  });

  final String image;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.primary3,
      radius: 30.r,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(image),
          SizedBox(height: 5.h),
          if (text != null)
            Text(
              text!,
              style: TextStyle(
                fontSize: 8.sp,
                color: AppColors.text1,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
              ),
            ),
        ],
      ),
    );
  }
}
