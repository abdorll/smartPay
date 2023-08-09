import 'package:flutter/material.dart';
import 'package:smart_pay/routes/app_routes.dart';
import 'package:smart_pay/screens/onboarding/signin_request.dart';
import 'package:smart_pay/screens/onboarding/splash_screen.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_pay/utils/colors.dart';

void main() {
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
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        onGenerateRoute: AppRoutes.generateRoute,
        initialRoute: RequestSignIn.requestSignIn
        //SplashScreen.splashScreen,
        );
  }
}
