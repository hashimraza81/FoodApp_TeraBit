import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/const/app_color.dart';
import 'package:food_delivery_app/const/app_images.dart';
import 'package:food_delivery_app/extension/sizebox_extension.dart';
import 'package:food_delivery_app/routes/routes_names.dart';

class DiscoveryPage extends StatelessWidget {
  final Color secondaryColor = AppColors.white;
  final TextStyle textStyle = const TextStyle(
    fontSize: 14,
    color: AppColors.text1,
    fontWeight: FontWeight.w400,
  );

  const DiscoveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 30.0.w),
            child: Drawer(
              width: 370,
              backgroundColor: AppColors.primary,
              child: Container(
                color: AppColors.primary,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      20.ph,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: secondaryColor,
                            child: SvgPicture.asset(
                              AppImages.person1,
                              color: AppColors.primary,
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 4.h),
                            decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 20.0.w),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: 'What can we get you',
                                        hintStyle: TextStyle(
                                          fontFamily: 'poppins',
                                          color: AppColors.grey_light_dark,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: secondaryColor,
                            child: const Icon(
                              Icons.download,
                              color: AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                      40.ph,
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 3,
                          crossAxisSpacing: 16.w,
                          mainAxisSpacing: 16.h,
                          // childAspectRatio: 1 / 1.5,
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            _buildGridItem(
                              AppImages.nimko,
                              'Groceries',
                              () {
                                Navigator.pushNamed(
                                    context, RoutesName.groceryStores);
                              },
                            ),
                            _buildGridItem(AppImages.egg, 'SuperFodvo', () {}),
                            _buildGridItem(
                                AppImages.dairy, 'Pharmacy & Beauty', () {}),
                            _buildGridItem(
                              AppImages.vegetable,
                              'Premium Restaurants',
                              () {
                                Navigator.pushNamed(
                                    context, RoutesName.premiumRestaurants);
                              },
                            ),
                            _buildGridItem(AppImages.cookingoil, 'Food', () {}),
                            _buildGridItem(
                                AppImages.coke, 'Shops & Gifts', () {}),
                            _buildGridItem(
                              AppImages.bakery,
                              'Drinks',
                              () {
                                Navigator.pushNamed(context, RoutesName.drinks);
                              },
                            ),
                            _buildGridItem(
                              AppImages.bakery,
                              'Courier',
                              () {
                                Navigator.pushNamed(
                                    context, RoutesName.restaurants);
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 325.w,
            top: 120.h,
            child: TextButton(
              onPressed: () => Navigator.pop(context),
              child: CircleAvatar(
                backgroundColor: AppColors.primary,
                child: SvgPicture.asset(AppImages.cross),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildGridItem(String image, String label, VoidCallback onTap) {
    return Container(
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 50.h,
              width: 50.w,
            ),
            // 10.ph,
            Text(
              label,
              style: textStyle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
