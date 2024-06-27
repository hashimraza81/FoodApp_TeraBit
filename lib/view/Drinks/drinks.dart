import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/const/app_color.dart';
import 'package:food_delivery_app/const/app_images.dart';
import 'package:food_delivery_app/extension/sizebox_extension.dart';
import 'package:food_delivery_app/provider/navigation_provider.dart';
import 'package:food_delivery_app/utils/bottom_navigation_bar.dart';
import 'package:food_delivery_app/utils/custom_text.dart';
import 'package:food_delivery_app/utils/reused_widget.dart';
import 'package:provider/provider.dart';

class Drinks extends StatefulWidget {
  const Drinks({super.key});

  @override
  State<Drinks> createState() => _DrinksState();
}

class _DrinksState extends State<Drinks> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NavigationProvider(),
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: SizedBox(
              height: 1361.h,
              width: 1.sw,
              child: Column(
                children: [
                  SizedBox(
                    height: 187.h,
                    width: 448.w,
                    child: Image.asset(
                      AppImages.drinks,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 1113.h,
                    width: 430.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.r),
                        topRight: Radius.circular(20.r),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 24.0.h,
                        right: 16.0.w,
                        left: 16.0.w,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            name: 'Drinks',
                            size: 24.sp,
                            color: AppColors.black,
                            fontWeight: FontWeight.bold,
                            familyFont: 'poppins',
                          ),
                          8.ph,
                          Text(
                            'Alcampo somos más de 20. profesionales quecada..More',
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: AppColors.grey3,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w300,
                            ),
                            maxLines: 1,
                          ),
                          32.ph,
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Option(
                                image: AppImages.thumb,
                              ),
                              Option(
                                image: AppImages.stopwatch,
                                text: '15-25',
                              ),
                              Option(
                                image: AppImages.men,
                                text: "4,49\$",
                              ),
                              Option(
                                image: AppImages.prime,
                                text: 'Prime',
                              ),
                            ],
                          ),
                          34.ph,
                          textfield(
                            controller: search,
                            hinttext: 'Search in Alcampo',
                            toHide: false,
                          ),
                          32.ph,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              grid(AppImages.mahou, 'Mahou', () {}),
                              grid(AppImages.anna, 'Anna Ereri', () {}),
                            ],
                          ),
                          18.ph,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              grid(AppImages.bodyrich, 'Body Rich Lotion',
                                  () {}),
                              grid(AppImages.annaglass, 'Anna Ereri', () {}),
                            ],
                          ),
                          18.ph,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              grid(AppImages.glassshop, 'Shop', () {}),
                              grid(AppImages.shea, 'Shea Nech', () {}),
                            ],
                          ),
                        ],
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

@override
Widget grid(String image, String label, VoidCallback onTap) {
  return InkWell(
    onTap: onTap,
    child: SizedBox(
      width: 150.w,
      height: 240.h,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: Image.asset(
              image,
              fit: BoxFit.fill,
              height: 190.h,
              width: 190.w,
            ),
          ),
          14.ph,
          Text(
            label,
            style: TextStyle(
              fontSize: 18.sp,
              color: AppColors.black,
              fontWeight: FontWeight.w800,
            ),
            textAlign: TextAlign.start,
          )
        ],
      ),
    ),
  );
}

// ignore: must_be_immutable
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

Widget buildGridItem(String image, String label, VoidCallback onTap) {
  return InkWell(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 55.h,
            width: 55.w,
          ),
          10.ph,
          Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              color: AppColors.text1,
              fontWeight: FontWeight.w400,
            ),
            textDirection: TextDirection.ltr,
            maxLines: 1,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}
