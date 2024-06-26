import 'package:flutter/material.dart';
import 'package:food_delivery_app/routes/routes_names.dart';

class NavigationProvider extends ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void changeIndex(int index, BuildContext context) {
    _selectedIndex = index;
    notifyListeners();

    // Update the navigation logic according to the index
    switch (index) {
      case 0:
        Navigator.pushNamed(context, RoutesName.dashboard);
        break;
      case 1:
        Navigator.pushNamed(
            context, 'RoutesName.favorites'); // Ensure correct route
        break;
      case 2:
        Navigator.pushNamed(
            context, 'RoutesName.chats'); // Ensure correct route
        break;
      case 3:
        Navigator.pushNamed(context, RoutesName.profile);
        break;
    }
  }
}
