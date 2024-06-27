import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/const/app_color.dart';
import 'package:food_delivery_app/const/app_images.dart';
import 'package:food_delivery_app/extension/sizebox_extension.dart';
import 'package:food_delivery_app/provider/navigation_provider.dart';
import 'package:food_delivery_app/utils/bottom_navigation_bar.dart';
import 'package:food_delivery_app/utils/custom_text.dart';
import 'package:food_delivery_app/utils/promotion_card.dart';
import 'package:food_delivery_app/utils/reused_widget.dart';
import 'package:food_delivery_app/utils/toggle_button.dart';
import 'package:food_delivery_app/utils/top_restaurant_card.dart';
import 'package:provider/provider.dart';

class Restaurants extends StatefulWidget {
  const Restaurants({super.key});

  @override
  State<Restaurants> createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final data = [
      {
        'name': 'Brunch',
        'discount': '20%',
        'image': AppImages.allpromotion,
        'place': '94 places'
      },
      {
        'name': 'Sea Food',
        'discount': '40%',
        'image': AppImages.desert,
        'place': '43 places'
      },
      {
        'name': 'Desserts',
        'discount': '10%',
        'image': AppImages.ice,
        'place': '38 places'
      },
      {
        'name': 'Desserts',
        'discount': '10%',
        'image': AppImages.ice,
        'place': '38 places'
      },
    ];

    return ChangeNotifierProvider(
      create: (context) => NavigationProvider(),
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 1.5,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 251.h,
                    child: Image.asset(
                      AppImages.res,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 96.h,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: AppColors.white,
                      ),
                      height: 1204.h,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 20.0.h,
                          horizontal: 21.w,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: AppColors.primary,
                                      width: 2,
                                    ),
                                  ),
                                  child: const CircleAvatar(
                                    backgroundColor: AppColors.white,
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ),
                                CustomText(
                                  name: 'Restaurants',
                                  size: 24.sp,
                                  color: AppColors.black,
                                  familyFont: 'poppins',
                                  fontWeight: FontWeight.bold,
                                ),
                                const ToggleButton()
                              ],
                            ),
                            42.ph,
                            textfield(
                              controller: search,
                              hinttext: 'Search in Alcampo',
                              toHide: false,
                            ),
                            30.ph,
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Option(
                                  image: AppImages.setting,
                                ),
                                Option(
                                  image: AppImages.cart,
                                  text: 'Supermart',
                                ),
                                Option(
                                  image: AppImages.conv,
                                  text: "Convience",
                                ),
                                Option(
                                  image: AppImages.diamond,
                                  text: 'Gourmet',
                                ),
                              ],
                            ),
                            28.ph,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Top Restaurant',
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: AppColors.text3,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: WidgetStateProperty.all(
                                      AppColors.primary3,
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'See all',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: AppColors.black,
                                      fontFamily: 'poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            16.ph,
                            SizedBox(
                              height: 210.h,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return SizedBox(
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 10.0.w),
                                      child: const RestaurantCard(),
                                    ),
                                  );
                                },
                              ),
                            ),
                            16.ph,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Top Restaurant',
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: AppColors.text3,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: WidgetStateProperty.all(
                                      AppColors.primary3,
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'See all',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: AppColors.black,
                                      fontFamily: 'poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            16.ph,
                            SizedBox(
                              height: 210.h,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return SizedBox(
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 10.0.w),
                                      child: const RestaurantCard(),
                                    ),
                                  );
                                },
                              ),
                            ),
                            16.ph,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(AppImages.horn),
                                    7.pw,
                                    Text(
                                      'Promotions',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        color: AppColors.text3,
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: WidgetStateProperty.all(
                                      AppColors.primary3,
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'See all',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: AppColors.black,
                                      fontFamily: 'poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            10.ph,
                            SizedBox(
                              height: 183.h,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: data.length,
                                itemBuilder: (context, index) {
                                  return SizedBox(
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 10.0.w),
                                      child: PromotionCard(
                                        image: data[index]['image']!,
                                        name: data[index]['name']!,
                                        discount: data[index]['discount']!,
                                        place: data[index]['place']!,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          bottomNavigationBar: const CustomBottomNavigationBar(),
        ),
      ),
    );
  }
}

class textfield extends StatelessWidget {
  textfield({
    super.key,
    required this.controller,
    required this.hinttext,
    required this.toHide,
  });

  final TextEditingController controller;
  String hinttext;
  bool toHide;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.grey1,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: TextField(
        style: TextStyle(
          color: AppColors.grey5,
          fontFamily: 'poppins',
          fontWeight: FontWeight.w500,
          fontSize: 16.sp,
        ),
        controller: controller,
        obscureText: toHide,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: TextStyle(
            color: AppColors.grey4,
            fontFamily: 'poppins',
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
          ),
          hintTextDirection: TextDirection.rtl,
          hintMaxLines: 1,
          contentPadding:
              EdgeInsets.symmetric(vertical: 15.0.h, horizontal: 20.0.w),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(48.0.r),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.grey1, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(48.0.r)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.grey1, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(48.r)),
          ),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
