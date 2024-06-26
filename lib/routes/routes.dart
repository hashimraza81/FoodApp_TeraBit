import 'package:flutter/material.dart';
import 'package:food_delivery_app/routes/routes_names.dart';
import 'package:food_delivery_app/view/Authentication/enable_location.dart';
import 'package:food_delivery_app/view/Authentication/location.dart';
import 'package:food_delivery_app/view/Authentication/name.dart';
import 'package:food_delivery_app/view/Authentication/phone_verification.dart';
import 'package:food_delivery_app/view/Authentication/signup_screen.dart';
import 'package:food_delivery_app/view/Authentication/welcome_screen.dart';
import 'package:food_delivery_app/view/Dashboard&Categories/dashboard.dart';
import 'package:food_delivery_app/view/Dashboard&Categories/discovery_categories.dart';
import 'package:food_delivery_app/view/Dashboard&Categories/profile.dart';
import 'package:food_delivery_app/view/Groceries/groceries_stores.dart';
import 'package:food_delivery_app/view/MoodBoard/signin_screen.dart';
import 'package:food_delivery_app/view/MoodBoard/splashscreen.dart';
import 'package:food_delivery_app/view/Premium_Restaurants/kfc_screen.dart';
import 'package:food_delivery_app/view/Premium_Restaurants/mcdonalds_screen.dart';
import 'package:food_delivery_app/view/Premium_Restaurants/pizzahut_screen.dart';
import 'package:food_delivery_app/view/Premium_Restaurants/premium_restaurants.dart';
import 'package:food_delivery_app/view/Premium_Restaurants/subway_screen.dart';

class Routes {
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashscreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case RoutesName.signin:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case RoutesName.signUp:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case RoutesName.phoneverification:
        return MaterialPageRoute(builder: (_) => const PhoneVerification());
      case RoutesName.name:
        return MaterialPageRoute(builder: (_) => const Name());
      case RoutesName.location:
        return MaterialPageRoute(builder: (_) => const Location());
      case RoutesName.enablelocation:
        return MaterialPageRoute(builder: (_) => const EnableLocation());
      case RoutesName.welcomeScreen:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case RoutesName.dashboard:
        return MaterialPageRoute(builder: (_) => const Dashboard());
      case RoutesName.discoveryPage:
        return MaterialPageRoute(builder: (_) => const DiscoveryPage());
      case RoutesName.kfc:
        return MaterialPageRoute(builder: (_) => const Kfc());
      case RoutesName.subway:
        return MaterialPageRoute(builder: (_) => const Subway());
      case RoutesName.pizzahut:
        return MaterialPageRoute(builder: (_) => const PizzaHut());
      case RoutesName.mcdonald:
        return MaterialPageRoute(builder: (_) => const Mcdonalds());
      case RoutesName.profile:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case RoutesName.groceryStores:
        return MaterialPageRoute(builder: (_) => const GroceryStores());
      case RoutesName.premiumRestaurants:
        return MaterialPageRoute(builder: (_) => const PremiumRestaurants());
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          );
        });
    }
  }
}
