import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/const/app_color.dart';
import 'package:provider/provider.dart';

import '../provider/navigation_provider.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.r),
      child: SizedBox(
        height: 125.h,
        child: Consumer<NavigationProvider>(
          builder: (context, navigationProvider, child) {
            return FloatingNavbar(
              onTap: (int val) {
                navigationProvider.changeIndex(val, context);
              },
              currentIndex: navigationProvider.selectedIndex,
              selectedItemColor: Colors.green,
              unselectedItemColor: AppColors.white,
              backgroundColor: AppColors.black,
              items: [
                FloatingNavbarItem(icon: Icons.home, title: 'Home'),
                FloatingNavbarItem(icon: Icons.favorite, title: 'Favorites'),
                FloatingNavbarItem(
                    icon: Icons.chat_bubble_outline, title: 'Chats'),
                FloatingNavbarItem(icon: Icons.person, title: 'Profile'),
              ],
            );
          },
        ),
      ),
    );
  }
}
