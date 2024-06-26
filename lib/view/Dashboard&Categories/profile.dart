import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/const/app_color.dart';
import 'package:food_delivery_app/const/app_images.dart';
import 'package:food_delivery_app/extension/sizebox_extension.dart';
import 'package:food_delivery_app/utils/bottom_navigation_bar.dart';
import 'package:food_delivery_app/utils/custom_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0.w, vertical: 18.0.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 60.r,
                  child: SvgPicture.asset(
                    AppImages.profile,
                    height: 60.h,
                  ),
                ),
                20.ph,
                CustomText(
                  name: 'Katty Berry',
                  size: 20.sp,
                  fontWeight: FontWeight.w700,
                  familyFont: 'poppins',
                  color: AppColors.text3,
                ),
                4.ph,
                CustomText(
                  name: 'kattyberry@gmail.com',
                  size: 14.sp,
                  fontWeight: FontWeight.w300,
                  familyFont: 'poppins',
                  color: AppColors.grey6,
                ),
                36.ph,
                const ProfileItems(
                  image: AppImages.person1,
                  text: 'My Orders',
                ),
                32.ph,
                const ProfileItems(
                  image: AppImages.information,
                  text: 'My Information',
                ),
                32.ph,
                const ProfileItems(
                  image: AppImages.fdovo,
                  text: 'Fdovo',
                ),
                32.ph,
                const ProfileItems(
                  image: AppImages.notification,
                  text: 'Notification',
                ),
                32.ph,
                const ProfileItems(
                  image: AppImages.delete,
                  text: 'Delete my Account',
                ),
                32.ph,
                const ProfileItems(
                  image: AppImages.faq,
                  text: 'Help & FAQ ',
                ),
                120.ph,
                const LogoutButton()
              ],
            ),
          ),
        ),
        bottomNavigationBar: const CustomBottomNavigationBar(),
      ),
    );
  }
}

// LogOut Button

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130.w,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.primary,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(20.r),
        color: AppColors.white,
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            AppColors.white,
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(AppImages.logout),
            2.pw,
            Text(
              'Logout',
              style: TextStyle(
                fontSize: 16.sp,
                color: AppColors.primary,
                fontWeight: FontWeight.w400,
                fontFamily: 'poppins',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Profile Items List
class ProfileItems extends StatelessWidget {
  const ProfileItems({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(image),
        14.pw,
        CustomText(
          name: text,
          size: 16.sp,
          fontWeight: FontWeight.w400,
          familyFont: 'poppins',
          color: AppColors.text3,
        )
      ],
    );
  }
}
