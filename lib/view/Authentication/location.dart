import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/const/app_color.dart';
import 'package:food_delivery_app/const/app_images.dart';
import 'package:food_delivery_app/extension/sizebox_extension.dart';
import 'package:food_delivery_app/routes/routes_names.dart';
import 'package:food_delivery_app/utils/custom_button.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Back'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset(AppImages.location)),
              Text(
                'Food wasy with real-time\ntrip updates',
                style: TextStyle(
                  color: AppColors.grey5,
                  fontSize: 20.sp,
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              14.ph,
              Text(
                'Allow push notification to receive trip status',
                style: TextStyle(
                  color: AppColors.grey2,
                  fontSize: 16.sp,
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
              138.ph,
              CustomButton(
                text: 'Next',
                onPressed: () {
                  Navigator.pushNamed(context, RoutesName.enablelocation);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
