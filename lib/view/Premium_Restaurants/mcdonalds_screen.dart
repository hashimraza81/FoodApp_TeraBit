import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/const/app_color.dart';
import 'package:food_delivery_app/const/app_images.dart';
import 'package:food_delivery_app/extension/sizebox_extension.dart';
import 'package:food_delivery_app/provider/navigation_provider.dart';
import 'package:food_delivery_app/utils/bottom_navigation_bar.dart';
import 'package:provider/provider.dart';

class Mcdonalds extends StatefulWidget {
  const Mcdonalds({super.key});

  @override
  State<Mcdonalds> createState() => _McdonaldsState();
}

class _McdonaldsState extends State<Mcdonalds> {
  final List<Map<String, String>> items = [
    {
      "title": "BBQ",
      "subtitle": "325ml, Price",
      "price": "\$1.50",
      "image": AppImages.bbq,
    },
    {
      "title": "Roust Beef",
      "subtitle": "325ml, Price",
      "price": "\$1.50",
      "image": AppImages.beef,
    },
    {
      "title": "Tuna",
      "subtitle": "325ml, Price",
      "price": "\$1.50",
      "image": AppImages.tuna,
    },
    {
      "title": "Veggie",
      "subtitle": "325ml, Price",
      "price": "\$1.50",
      "image": AppImages.veggie,
    },
    // Add more items as needed
  ];

  // List<Map<String, String>> get repeatedItems {
  //   return List<Map<String, String>>.generate(
  //     items.length * 4,
  //     (index) => items[index % items.length],
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NavigationProvider(),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.arrow_back, color: Colors.green),
                  ),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: Container(
                      height: 45.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(11.0.r),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.grey_light_dark,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'poppins',
                          ),
                          border: InputBorder.none,
                          prefixIcon:
                              const Icon(Icons.search, color: Colors.grey),
                        ),
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.text1,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'poppins',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.mcdonaldbg),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            toolbarHeight: 251.h,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mcdonald',
                  style: TextStyle(
                    fontSize: 24.sp,
                    color: AppColors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'poppins',
                  ),
                ),
                4.ph,
                Row(
                  children: [
                    SvgPicture.asset(AppImages.r),
                    4.pw,
                    Text(
                      'Top Restaurants',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.black,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'poppins',
                      ),
                    ),
                  ],
                ),
                16.ph,
                Expanded(
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Image.asset(
                          items[index]["image"]!,
                          width: 81.w,
                          height: 51.h,
                          fit: BoxFit.cover,
                        ),
                        title: Text(items[index]["title"]!),
                        subtitle: Text(items[index]["subtitle"]!),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(items[index]["price"]!),
                            const Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: const CustomBottomNavigationBar(),
        ),
      ),
    );
  }
}
