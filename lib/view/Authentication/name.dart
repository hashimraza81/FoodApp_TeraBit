import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/const/app_color.dart';
import 'package:food_delivery_app/extension/sizebox_extension.dart';
import 'package:food_delivery_app/routes/routes_names.dart';
import 'package:food_delivery_app/utils/custom_button.dart';

class Name extends StatefulWidget {
  const Name({super.key});

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  @override
  Widget build(BuildContext context) {
    TextEditingController firstname = TextEditingController();
    TextEditingController lastname = TextEditingController();
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: const Text('Back'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'What’s Your Name',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    color: AppColors.grey5,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                18.ph,
                Text(
                  'Let us know to property address you',
                  style: TextStyle(
                    color: AppColors.grey2,
                    fontSize: 16.sp,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                71.ph,
                Center(
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 60.r,
                        backgroundColor: AppColors.grey_full_light,
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: CircleAvatar(
                          radius: 20.r,
                          backgroundColor: AppColors.primary,
                          child: Icon(
                            Icons.camera_alt_outlined,
                            size: 20.r,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                43.ph,
                textfield(
                  controller: firstname,
                  hinttext: 'First Name',
                  toHide: false,
                ),
                20.ph,
                textfield(
                  controller: lastname,
                  hinttext: 'Last Name',
                  toHide: false,
                ),
                10.ph,
                Text(
                  'Atleast 1 number or a special character',
                  style: TextStyle(
                    color: AppColors.grey2,
                    fontSize: 14.sp,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                43.ph,
                CustomButton(
                  text: 'Next',
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesName.location);
                  },
                )
              ],
            ),
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
