import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/const/app_color.dart';
import 'package:food_delivery_app/const/app_images.dart';
import 'package:food_delivery_app/routes/routes_names.dart';
import 'package:food_delivery_app/utils/custom_button.dart';
import 'package:food_delivery_app/utils/phone_field.dart';
import 'package:food_delivery_app/utils/social_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const Text('Back'),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 16, right: 50),
            child: Text(
              'Sign up with your email or phone number',
              style: TextStyle(
                fontFamily: 'poppins',
                color: AppColors.grey5,
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 30.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                buildPhoneNumberField(),
                SizedBox(height: 20.h),
                CustomButton(
                  text: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesName.phoneverification);
                  },
                ),
                SizedBox(height: 20.h),
                _buildOrDivider(),
                SizedBox(height: 20.h),
                buildSocialButton(
                  color: AppColors.blue1,
                  assetPath: AppImages.fblogo,
                  text: 'Sign up with Facebook',
                  textStyle: TextStyle(
                    fontFamily: 'poppins',
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                  ),
                  onPressed: () {},
                ),
                SizedBox(height: 20.h),
                buildSocialButton(
                  color: AppColors.white,
                  assetPath: AppImages.googlelogo,
                  text: 'Continue with Google',
                  textStyle: TextStyle(
                    fontFamily: 'poppins',
                    color: AppColors.grey4,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                  ),
                  onPressed: () {},
                ),
                SizedBox(height: 20.h),
                buildSocialButton(
                  color: AppColors.black,
                  assetPath: AppImages.applelogo,
                  text: 'Continue with Apple',
                  textStyle: TextStyle(
                    fontFamily: 'poppins',
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                  ),
                  onPressed: () {},
                ),
                SizedBox(height: 17.h),
                _buildSignupPrompt(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOrDivider() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(child: Divider(color: AppColors.grey4, thickness: 1)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: const Text(
            'or',
            style: TextStyle(
              color: AppColors.grey4,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Expanded(child: Divider(color: AppColors.grey4, thickness: 1)),
      ],
    );
  }

  Widget _buildSignupPrompt() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account? ',
          style: TextStyle(
            fontSize: 16.sp,
            fontFamily: 'poppins',
            color: AppColors.grey3,
            fontWeight: FontWeight.w400,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, RoutesName.signin);
          },
          child: Text(
            'Sign in',
            style: TextStyle(
              fontSize: 16.sp,
              fontFamily: 'poppins',
              color: AppColors.primary,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
