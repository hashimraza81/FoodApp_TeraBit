import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/const/app_color.dart';
import 'package:food_delivery_app/const/app_images.dart';
import 'package:food_delivery_app/extension/sizebox_extension.dart';
import 'package:food_delivery_app/routes/routes_names.dart';
import 'package:food_delivery_app/utils/bottom_navigation_bar.dart';
import 'package:food_delivery_app/utils/promotion_card.dart';
import 'package:food_delivery_app/utils/super_menu.dart';
import 'package:food_delivery_app/utils/top_restaurant_card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    // final DashboardController controller = Get.put(DashboardController());
    TextEditingController search = TextEditingController();

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

    final SuperCard = [
      {
        'text': 'Frash Fruits\n&Vegetable',
        'image': AppImages.vegetable,
      },
      {
        'text': 'Cooking Oil\n& Ghee',
        'image': AppImages.cookingoil,
      },
      {
        'text': 'Meat & Fish',
        'image': AppImages.fish,
      },
      {
        'text': 'Bakery & Snacks',
        'image': AppImages.bakery,
      },
      {
        'text': 'Dairy & Eggs',
        'image': AppImages.dairy,
      },
      {
        'text': 'Beverages',
        'image': AppImages.coke,
      },
      {
        'text': 'Meat & Fish',
        'image': AppImages.egg,
      },
      {
        'text': 'Frash Fruits\n& Vegetable',
        'image': AppImages.nimko,
      },
    ];

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //Header

              Padding(
                padding: EdgeInsets.only(top: 31.h, left: 102.w, right: 80.w),
                child: Container(
                  height: 36.h,
                  width: 219.w,
                  decoration: BoxDecoration(
                    color: AppColors.black,
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.h, left: 3.w),
                    child: Text(
                      'Get Your First delivery free 🔥',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'poppins',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              11.ph,

              //menu barr

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Container(
                  width: 398.w,
                  height: 32.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 30.r,
                        backgroundColor: const Color(0xFF2CC879),
                        child: InkWell(
                          onTap: () => Navigator.pushNamed(
                            context,
                            RoutesName.discoveryPage,
                          ),
                          child: SvgPicture.asset(
                            AppImages.menu,
                            width: 20.w,
                            height: 20.h,
                          ),
                        ),
                      ),
                      Text(
                        'Menu',
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: AppColors.black,
                        ),
                      ),
                      Text(
                        'Jl. Soekarno Hatta 15A',
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w200,
                          fontSize: 14.sp,
                          color: AppColors.black,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xFF2CC879),
                      ),
                      const ToggleButton(),
                    ],
                  ),
                ),
              ),
              20.ph,

              //search fieldd

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: textfield(
                  controller: search,
                  hinttext: 'Search',
                  toHide: false,
                ),
              ),
              17.ph,

              //banner

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Container(
                  width: 398.w,
                  height: 202.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: AppColors.primary,
                  ),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0.r),
                          child: Opacity(
                            opacity: 0.3,
                            child: Image.asset(
                              width: 398.w,
                              height: 202.h,
                              AppImages.pattern,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 43.h,
                        left: 22.w,
                        child: Column(
                          children: [
                            Text(
                              'Get your 30% daily\ndiscount now!',
                              style: TextStyle(
                                fontFamily: 'poppins',
                                color: AppColors.white,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            31.ph,
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  AppColors.black,
                                ),
                              ),
                              onPressed: () {},
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 11.5.h,
                                  horizontal: 40.w,
                                ),
                                child: Text(
                                  'Order Now',
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'poppins',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 245.w,
                        right: 1.w,
                        bottom: 18.h,
                        top: 0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0.r),
                          child: Image.asset(
                            AppImages.burger,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              21.ph,

              //options

              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 21.0.w,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Option(
                      image: AppImages.setting,
                    ),
                    Option(
                      image: AppImages.american,
                      text: 'American',
                    ),
                    Option(
                      image: AppImages.bg,
                      text: 'Burgers',
                    ),
                    Option(
                      image: AppImages.breakfast,
                      text: 'Breakfast',
                    ),
                    Option(
                      image: AppImages.american,
                      text: 'American',
                    ),
                  ],
                ),
              ),
              26.ph,

              //Top Restaurants

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Row(
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
                        backgroundColor: MaterialStateProperty.all(
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
              ),
              16.ph,

              //menu list  RestaurantCard

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: SizedBox(
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
              ),

              //Promotions Button

              24.ph,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Row(
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
                        backgroundColor: MaterialStateProperty.all(
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
              ),
              16.ph,

              //Menus Promotion card
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: SizedBox(
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
              ),

              // Super Menu button
              24.ph,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(AppImages.horn),
                        7.pw,
                        Text(
                          'Super',
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
                        backgroundColor: MaterialStateProperty.all(
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
              ),
              16.ph,

              // Super Card

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.0.w),
                child: SizedBox(
                  height: 2 * 200.h,
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 1 / 1.5,
                      crossAxisSpacing: 8.w,
                      mainAxisSpacing: 8.h,
                    ),
                    itemCount: SuperCard.length,
                    itemBuilder: (context, index) {
                      return SuperMenu(
                        text: SuperCard[index]['text']!,
                        image: SuperCard[index]['image']!,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const CustomBottomNavigationBar(),
      ),
    );
  }
}

class Option extends StatelessWidget {
  const Option({
    super.key,
    required this.image,
    this.text,
  });

  final String image;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.primary3,
      radius: 30.r,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(image),
          SizedBox(height: 5.h),
          if (text != null)
            Text(
              text!,
              style: TextStyle(
                fontSize: 8.sp,
                color: AppColors.text1,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
              ),
            ),
        ],
      ),
    );
  }
}

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key});

  @override
  _ToggleButtonState createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool isDelivery = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isDelivery = !isDelivery;
        });
      },
      child: Container(
        width: 69.w,
        height: 32.h,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.primary,
            width: 3.0,
          ),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeIn,
              // left: isDelivery ? 0 : 34.5.w,
              // right: isDelivery ? 34.5.w : 0,
              child: Container(
                width: 34.5.w,
                height: 32.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.r),
                ),
              ),
            ),
            Positioned.fill(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      // width: 34.5.w,
                      // height: 32.h,
                      decoration: BoxDecoration(
                        color: isDelivery ? AppColors.primary : AppColors.white,
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      child: Center(
                        child: Image.asset(
                          AppImages.b,
                          color:
                              isDelivery ? AppColors.white : AppColors.primary,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // width: 34.5.w,
                      // height: 32.h,
                      decoration: BoxDecoration(
                          color:
                              isDelivery ? AppColors.white : AppColors.primary,
                          borderRadius: BorderRadius.circular(30.r),
                          border: Border.all(color: Colors.transparent)),
                      child: Center(
                        child: Image.asset(
                          AppImages.p,
                          color:
                              isDelivery ? AppColors.primary : AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable, camel_case_types
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
          color: AppColors.black,
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
      ),
    );
  }
}
