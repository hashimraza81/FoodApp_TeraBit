import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/const/app_color.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

Widget buildPhoneNumberField() {
  return SizedBox(
    height: 80.h,
    width: 362.w,
    child: IntlPhoneField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(color: AppColors.grey4),
        ),
        labelText: 'Your Phone Number',
        labelStyle: TextStyle(
          color: AppColors.grey2,
          fontSize: 16.sp,
          fontFamily: 'poppins',
          fontWeight: FontWeight.w400,
        ),
        hintStyle: TextStyle(
          color: AppColors.grey2,
          fontSize: 16.sp,
          fontFamily: 'poppins',
          fontWeight: FontWeight.w400,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(color: Colors.black),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(color: AppColors.grey4),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(color: Colors.black),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(color: Colors.red),
        ),
      ),
      style: const TextStyle(color: Colors.black),
      dropdownTextStyle: TextStyle(
        fontSize: 18.sp,
        color: AppColors.black,
      ),
      initialCountryCode: 'IN',
      onChanged: (phone) {
        print(phone.completeNumber);
      },
    ),
  );
}
