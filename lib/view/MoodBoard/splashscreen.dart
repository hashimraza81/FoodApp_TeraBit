import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/const/app_color.dart';
import 'package:food_delivery_app/const/app_images.dart';
import 'package:food_delivery_app/extension/sizebox_extension.dart';
import 'package:food_delivery_app/routes/routes_names.dart';
import 'package:food_delivery_app/utils/custom_button.dart';
import 'package:food_delivery_app/utils/custom_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        width: width,
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: 42.0.w,
                left: 42.0.w,
                top: 90.0.w,
              ),
              child: Image.asset(AppImages.splash),
            ),
            90.ph,
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 54.0.w,
              ),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 24.sp,
                    fontFamily: 'poppins',
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'The Fastest Way To Get\n',
                    ),
                    TextSpan(
                      text: '       Food',
                      style: TextStyle(
                        color: AppColors.primary,
                      ),
                    ),
                    TextSpan(
                      text: ' Delivery',
                    ),
                  ],
                ),
              ),
            ),
            5.ph,
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 44.w,
              ),
              child: CustomText(
                name: 'Buying food quickly is a good experience',
                fontWeight: FontWeight.w400,
                color: AppColors.black,
                size: 14.sp,
                familyFont: 'poppins',
              ),
            ),
            46.ph,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 38.0.w),
              child: CustomButton(
                text: 'Signin',
                onPressed: () {
                  Navigator.pushNamed(context, RoutesName.signin);
                },
              ),
            ),
            23.ph,
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 85.0.w,
              ),
              child: InkWell(
                onTap: () => Navigator.pushNamed(context, RoutesName.signUp),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      fontFamily: 'poppins',
                    ),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'Don’t have an account?',
                      ),
                      TextSpan(
                        text: ' SignUp',
                        style: TextStyle(
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
