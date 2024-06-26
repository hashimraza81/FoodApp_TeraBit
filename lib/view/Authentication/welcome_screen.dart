import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/const/app_color.dart';
import 'package:food_delivery_app/const/app_images.dart';
import 'package:food_delivery_app/routes/routes_names.dart';
import 'package:food_delivery_app/utils/custom_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
        padding: EdgeInsets.symmetric(horizontal: 27.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 101.h),
            Center(
              child: SvgPicture.asset(
                AppImages.welcome,
                width: 159.w,
                height: 159.h,
              ),
            ),
            SizedBox(height: 25.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 23.w),
              child: Text(
                'Welcome To Fdovo Food',
                style: TextStyle(
                  fontFamily: 'poppins',
                  color: AppColors.grey5,
                  fontSize: 23.sp,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 45.w),
              child: RichText(
                text: TextSpan(
                  text: 'Essential services to earning opportunities.Your',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    color: AppColors.grey2,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  children: const [
                    TextSpan(
                      text: 'SuperApp',
                      style: TextStyle(
                        color: AppColors.primary,
                      ),
                    )
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            CustomButton(
              text: 'Home',
              onPressed: () {
                Navigator.pushNamed(context, RoutesName.dashboard);
              },
            ),
            SizedBox(height: 27.h),
          ],
        ),
      ),
    );
  }
}
