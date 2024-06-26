import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/const/app_color.dart';
import 'package:food_delivery_app/const/app_images.dart';

class PromotionCard extends StatelessWidget {
  const PromotionCard({
    super.key,
    required this.image,
    required this.discount,
    required this.name,
    required this.place,
  });
  final String image;
  final String discount;
  final String name;
  final String place;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 183.h,
          width: 136.w,
          decoration: BoxDecoration(
            color: AppColors.primary3,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.r),
              topRight: Radius.circular(8.r),
            ),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 122.h,
                    width: 136.w,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AppImages(image),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.r),
                        topRight: Radius.circular(8.r),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 7.h,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(18.r),
                          bottomLeft: Radius.circular(18.r),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 4.0.h,
                          horizontal: 8.0.w,
                        ),
                        child: Text(
                          discount,
                          style: TextStyle(
                            fontSize: 8.sp,
                            color: AppColors.black,
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                height: 61.h,
                width: 136.w,
                decoration: const BoxDecoration(
                  color: AppColors.grey1,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 16.0.w, top: 5.0.h),
                      child: Text(
                        name,
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: AppColors.text3,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.0.w,
                        top: 4.h,
                        bottom: 5.h,
                      ),
                      child: Text(
                        place,
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: AppColors.text2,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
