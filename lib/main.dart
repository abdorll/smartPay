

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:smart_pay/routes/app_routes.dart';
import 'package:smart_pay/screens/account_creation/register_screen.dart';
import 'package:smart_pay/screens/account_creation/setup_your_account_screen.dart';
import 'package:smart_pay/screens/account_creation/signup_screen.dart';
import 'package:smart_pay/screens/account_creation/verify_email_creen.dart';
import 'package:smart_pay/screens/kyc_verifiation/face_verification_capture.dart';
import 'package:smart_pay/screens/onboarding/signin_request.dart';
import 'package:smart_pay/screens/onboarding/splash_screen.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_pay/screens/pin_setup/pin_setup_screen.dart';
import 'package:smart_pay/screens/signin_options/signin_otp_screen.dart';
import 'package:smart_pay/utils/colors.dart';
import 'package:face_camera/face_camera.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FaceCamera.initialize();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: purple, // Set the status bar color to black
    ),
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SmartPay',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        onGenerateRoute: AppRoutes.generateRoute,
        initialRoute: SplashScreen.splashScreen,
        );
  }
}
