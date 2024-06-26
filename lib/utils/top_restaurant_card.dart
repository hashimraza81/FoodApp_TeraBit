import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/const/app_color.dart';
import 'package:food_delivery_app/const/app_images.dart';
import 'package:food_delivery_app/extension/sizebox_extension.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              children: [
                Container(
                  height: 122.h,
                  width: 271.w,
                  decoration: BoxDecoration(
                    // color: kColorGrey.withOpacity(0.1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.r),
                      topRight: Radius.circular(8.r),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: 122.h,
                        width: 271.w,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AppImages(
                              AppImages.fooddashboard,
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.r),
                            topRight: Radius.circular(8.r),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 70.h,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.r),
                              bottomLeft: Radius.circular(8.r),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 9.0.h,
                              horizontal: 8.0.w,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  '€3.00 off delivery',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: AppColors.white,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                4.pw,
                                SvgPicture.asset(
                                  AppImages.officon,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 87.h,
                  width: 271.w,
                  decoration: BoxDecoration(
                    // color: kColorGrey.withOpacity(0.1),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8.r),
                      bottomRight: Radius.circular(8.r),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'Crazy tacko',
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: AppColors.text3,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Delicouse tackos, appetizing snacks, fr...',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: AppColors.text2,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                AppImages.truck,
                              ),
                              Text(
                                '€3,00',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: AppColors.text2,
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                AppImages.clock,
                              ),
                              Text(
                                '40-50min',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: AppColors.text2,
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                AppImages.star,
                              ),
                              Text(
                                '9,5',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: AppColors.text2,
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
