import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/const/app_color.dart';
import 'package:food_delivery_app/const/app_images.dart';

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
