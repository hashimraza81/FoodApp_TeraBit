import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/const/app_color.dart';
import 'package:food_delivery_app/routes/routes_names.dart';
import 'package:food_delivery_app/utils/custom_button.dart';

class PhoneVerification extends StatefulWidget {
  const PhoneVerification({super.key});

  @override
  State<PhoneVerification> createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30.h, left: 87.w, right: 70.w),
                child: Text(
                  'Phone verification',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 24.sp,
                    color: AppColors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12.h, left: 56.w, right: 57.w),
                child: Text(
                  'Enter your OTP code',
                  style: TextStyle(
                    color: AppColors.grey2,
                    fontSize: 16.sp,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.h, left: 51.w, right: 56.w),
                child: OtpTextField(
                  numberOfFields: 5,
                  borderColor: const Color(0xFFA0A0A0),
                  focusedBorderColor: const Color(0xFFA0A0A0),
                  showFieldAsBox: true,
                  fieldWidth: 40.w,
                  margin: EdgeInsets.symmetric(horizontal: 8.w),
                  textStyle: TextStyle(
                    fontSize: 24.sp,
                    color: AppColors.grey5,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w700,
                  ),
                  onCodeChanged: (String code) {
                    // Handle validation or checks here
                  },
                  onSubmit: (String verificationCode) {
                    // Handle validation or checks here
                  }, // end onSubmit
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h, left: 50.w, right: 50.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Didn’t receive code? ',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: 'poppins',
                        color: AppColors.grey3,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Resend again ',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'poppins',
                          color: AppColors.primary,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 221.h, left: 26.w, right: 27.w),
                child: CustomButton(
                  text: 'Verify',
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesName.name);
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
