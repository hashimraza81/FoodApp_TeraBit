import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/const/app_color.dart';
import 'package:food_delivery_app/const/app_images.dart';
import 'package:food_delivery_app/provider/navigation_provider.dart';
import 'package:food_delivery_app/utils/alcampocontainer.dart';
import 'package:food_delivery_app/utils/bottom_navigation_bar.dart';
import 'package:provider/provider.dart';

class Alcampo extends StatefulWidget {
  const Alcampo({super.key});

  @override
  State<Alcampo> createState() => _AlcampoState();
}

class _AlcampoState extends State<Alcampo> {
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
  // ignore: non_constant_identifier_names
  final SuperCard = [
    {
      'text': 'Fresh Fruits\n&Vegetable',
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
      'text': 'Fresh Fruits\n& Vegetable',
      'image': AppImages.nimko,
    },
    //
    {
      'text': 'Fresh Fruits\n&Vegetable',
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
  ];

  @override
  Widget build(BuildContext context) {
    TextEditingController search = TextEditingController();
    return ChangeNotifierProvider(
      create: (context) => NavigationProvider(),
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 1.3.sh,
                  width: 1.sw,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 448.w,
                        height: 251.h,
                        child: Image.asset(
                          AppImages.alcampobg,
                          fit: BoxFit.cover,
                        ),
                      ),
                      AlcampoContainner(
                          search: search, SuperCard: SuperCard, data: data),
                      Positioned(
                        left: 70.w,
                        top: 140.h,
                        child: TextButton(
                          onPressed: () {},
                          child: CircleAvatar(
                            radius: 50.h,
                            backgroundColor: AppColors.white,
                            child: Image.asset(
                              AppImages.auchan,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          bottomNavigationBar: const CustomBottomNavigationBar(),
        ),
      ),
    );
  }
}
