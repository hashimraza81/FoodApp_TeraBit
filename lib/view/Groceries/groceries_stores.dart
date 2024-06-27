import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/const/app_color.dart';
import 'package:food_delivery_app/const/app_images.dart';
import 'package:food_delivery_app/extension/sizebox_extension.dart';
import 'package:food_delivery_app/routes/routes_names.dart';
import 'package:food_delivery_app/utils/gridview_reused.dart';

class GroceryStores extends StatelessWidget {
  final Color secondaryColor = AppColors.white;
  final TextStyle textStyle = const TextStyle(
    fontSize: 14,
    color: AppColors.text1,
    fontWeight: FontWeight.w400,
  );

  const GroceryStores({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 30.0.w),
            child: Container(
              width: 370,
              decoration: const BoxDecoration(
                color: AppColors.primary,
              ),
              child: Container(
                color: AppColors.primary,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                      Flexible(
                        child: GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16.w,
                          mainAxisSpacing: 16.h,
                          shrinkWrap: true,
                          // childAspectRatio: 1 / 1.5,
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            buildGridItem(
                              AppImages.alcampo,
                              "Alcampo ",
                              () {
                                Navigator.pushNamed(
                                    context, RoutesName.alcampo);
                              },
                            ),
                            buildGridItem(
                              AppImages.localmerchant,
                              'Local Merchants',
                              () {
                                Navigator.pushNamed(context, RoutesName.kfc);
                              },
                            ),
                            buildGridItem(
                              AppImages.supermart,
                              'Supermart',
                              () {
                                Navigator.pushNamed(
                                    context, RoutesName.pizzahut);
                              },
                            ),
                          ],
                        ),
                      ),
                      48.ph,
                      Text(
                        'Groceries',
                        style: TextStyle(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                          fontFamily: 'poppins',
                        ),
                      )
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
          ),
        ],
      ),
    );
  }
}
