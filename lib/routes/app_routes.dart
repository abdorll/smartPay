import 'package:flutter/material.dart';
import 'package:smart_pay/screens/account_creation/setup_your_account_screen.dart';
import 'package:smart_pay/screens/account_creation/signup_screen.dart';
import 'package:smart_pay/screens/account_creation/verify_email_creen.dart';
import 'package:smart_pay/screens/kyc_verifiation/bvn_verification_screen.dart';
import 'package:smart_pay/screens/onboarding/signin_request.dart';
import 'package:smart_pay/screens/onboarding/splash_screen.dart';
import 'package:smart_pay/screens/page_not_found/page_not_found_screen.dart';
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
      case VerifyEmailScreen.verifyEmailScreen:
        return MaterialPageRoute(builder: (context) => VerifyEmailScreen());
      case SetupYourAccount.setupYourAccount:
        return MaterialPageRoute(builder: (context) => SetupYourAccount());
      case BvnVerificationScreen.bvnVerificationScreen:
        return MaterialPageRoute(builder: (context) => BvnVerificationScreen());

      default:
        return MaterialPageRoute(builder: (context) => PageNotFound());
    }
    ;
  }
}
