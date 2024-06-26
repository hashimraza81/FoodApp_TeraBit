import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/const/app_color.dart';
import 'package:food_delivery_app/const/app_images.dart';
import 'package:food_delivery_app/routes/routes_names.dart';

import '../../utils/custom_button.dart';

class EnableLocation extends StatefulWidget {
  const EnableLocation({super.key});

  @override
  State<EnableLocation> createState() => _EnableLocationState();
}

class _EnableLocationState extends State<EnableLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 27.w, vertical: 98.h),
        child: Container(
          width: 340.w,
          height: 460.h,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(20.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 10,
                offset: const Offset(0, 5), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30.h),
                child: SvgPicture.asset(
                  AppImages.locationicon,
                  width: 150.w,
                  height: 150.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25.0, left: 48.w, right: 48.w),
                child: Text(
                  '“Fdovo” Would Like to Send you Notifications',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    color: AppColors.grey5,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
                child: Text(
                  'Choose your location to start finding the requests around you',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    color: AppColors.grey2,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h),
                child: CustomButton(
                  text: 'Use My Location',
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesName.welcomeScreen);
                  },
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Skip for Now',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    color: AppColors.grey_full_light,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
