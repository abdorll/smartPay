import 'package:flutter/material.dart';
import 'package:smart_pay/screens/account_creation/signup_screen.dart';
import 'package:smart_pay/screens/onboarding/signin_request.dart';
import 'package:smart_pay/screens/onboarding/splash_screen.dart';
import 'package:smart_pay/screens/page_not_found/page_not_found.dart.dart';
import 'package:smart_pay/screens/signin_options/signin_otp_screen.dart';
import 'package:smart_pay/screens/signin_options/signin_screen.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.splashScreen:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case RequestSignIn.requestSignIn:
        return MaterialPageRoute(builder: (context) => RequestSignIn());
      case SignupScreen.signupScreen:
        return MaterialPageRoute(builder: (context) => SignupScreen());
      case LoginScreen.loginScreen:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case SignInOtpScreen.signInOtpScreen:
        return MaterialPageRoute(builder: (context) => SignInOtpScreen());
      default:
        return MaterialPageRoute(builder: (context) => PageNotFound());
    }
    ;
  }
}
