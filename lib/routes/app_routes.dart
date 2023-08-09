import 'package:flutter/material.dart';
import 'package:smart_pay/screens/onboarding/splash_screen.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.splashScreen:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      default:
        return MaterialPageRoute(builder: (context) => Container());
      // "" => MaterialPageRoute(builder: (context)=>Container()),
      // "ff" => MaterialPageRoute(builder: (context)=>Container()),
    }
    ;
  }
}
