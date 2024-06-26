import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/const/app_color.dart';
import 'package:food_delivery_app/const/app_images.dart';
import 'package:food_delivery_app/extension/sizebox_extension.dart';
import 'package:food_delivery_app/routes/routes_names.dart';
import 'package:food_delivery_app/utils/custom_button.dart';
import 'package:food_delivery_app/utils/custom_text.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 1.sh,
              width: 1.sw,
              child: Stack(
                children: [
                  SizedBox(
                    width: 1.sw,
                    height: 475.h,
                    child: Image.asset(
                      AppImages.signin,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 377.h,
                    child: Container(
                      width: 1.sw,
                      height: 452.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60.r),
                          topRight: Radius.circular(60.r),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            74.ph,
                            CustomText(
                              name: 'Login To Your Account',
                              size: 18.sp,
                              fontWeight: FontWeight.w500,
                              familyFont: 'poppins',
                              color: AppColors.black,
                            ),
                            21.ph,
                            textfield(
                              controller: email,
                              hinttext: 'Email',
                              toHide: false,
                            ),
                            18.ph,
                            textfield(
                              controller: password,
                              hinttext: 'Password',
                              toHide: true,
                            ),
                            22.ph,
                            Center(
                                child: CustomButton(
                                    text: 'Signin', onPressed: () {})),
                            25.ph,
                            Center(
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, RoutesName.signUp);
                                },
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                      fontFamily: 'poppins',
                                    ),
                                    children: const <TextSpan>[
                                      TextSpan(
                                        text: 'Don’t have an account?',
                                      ),
                                      TextSpan(
                                        text: ' SignUp',
                                        style: TextStyle(
                                          color: AppColors.primary,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
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
          color: AppColors.grey4,
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
