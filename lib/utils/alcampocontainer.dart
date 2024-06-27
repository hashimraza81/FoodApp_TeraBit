import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/const/app_color.dart';
import 'package:food_delivery_app/const/app_images.dart';
import 'package:food_delivery_app/extension/sizebox_extension.dart';
import 'package:food_delivery_app/utils/custom_text.dart';
import 'package:food_delivery_app/utils/promotion_card.dart';
import 'package:food_delivery_app/utils/reused_widget.dart';
import 'package:food_delivery_app/utils/super_menu.dart';

class AlcampoContainner extends StatelessWidget {
  const AlcampoContainner({
    super.key,
    required this.search,
    required this.SuperCard,
    required this.data,
  });

  final TextEditingController search;
  final List<Map<String, String>> SuperCard;
  final List<Map<String, String>> data;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 187.h,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: 64.0.h,
            right: 16.w,
            left: 16.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                name: 'Alcampo',
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
              25.ph,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shop by category',
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: AppColors.text3,
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w800,
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
              18.ph,
              Expanded(
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 1 / 1.5,
                    crossAxisSpacing: 8.w,
                    mainAxisSpacing: 8.h,
                  ),
                  // shrinkWrap: true,
                  itemCount: SuperCard.length,
                  itemBuilder: (context, index) {
                    return SuperMenu(
                      text: SuperCard[index]['text']!,
                      image: SuperCard[index]['image']!,
                    );
                  },
                ),
              ),
              22.ph,
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
              17.ph,
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
    );
  }
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
