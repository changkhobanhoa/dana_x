import 'package:dana_x/page/cart/cart_page.dart';
import 'package:dana_x/page/doashboard/doashboard_page.dart';
import 'package:dana_x/page/friends/friends_page.dart';
import 'package:dana_x/page/login/login_page.dart';
import 'package:dana_x/page/splash/splash_page.dart';
import 'package:flutter/material.dart';

class RouterGenerator {
  static const String loginScreen = '/login-screen';
  static const String homeScreen = '/home-screen';
  static const String doashboardScreen = '/doashboard-screen';
  static const String newFeedSCreen = '/newfeed-screen';
  static const String friendsPage = '/friend-screen';
  static const String cartPage = '/cart-screen';
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
            builder: (context) => SplashPage(), settings: settings);
      case loginScreen:
        return MaterialPageRoute(
            builder: (context) => LoginPage(), settings: settings);
      case doashboardScreen:
        return MaterialPageRoute(
            builder: (context) => DashboardPage(), settings: settings);
      case friendsPage:
        return MaterialPageRoute(
            builder: (context) => FriendsPage(), settings: settings);
      case newFeedSCreen:
        return MaterialPageRoute(
            builder: (context) => FriendsPage(), settings: settings);
      case cartPage:
        return MaterialPageRoute(
            builder: (context) => CartPage(), settings: settings);
      default:
        return NotfoundPage();
    }
  }
   static Route NotfoundPage() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Something went wrong!'),
        ),
      ),
    );
  }
}
