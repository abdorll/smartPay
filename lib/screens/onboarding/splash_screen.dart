import 'package:flutter/material.dart'; 
import 'package:smart_pay/screens/onboarding/intro_screens.dart';
import 'package:smart_pay/utils/colors.dart';
import 'package:smart_pay/utils/images.dart';

class SplashScreen extends StatefulWidget {
  static const splashScreen = "splashScteen";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) {
        return const SplashScreenTwo();
      }), (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purple,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            pngImage(Images.purpleBackground,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height),
            pngImage(Images.whiteLogo, width: 300),
          ],
        ),
      ),
    );
  }
}

class SplashScreenTwo extends StatefulWidget {
  static const splashScreenTwo = "splashScteen";
  const SplashScreenTwo({super.key});

  @override
  State<SplashScreenTwo> createState() => _SplashScreenTwoState();
}

class _SplashScreenTwoState extends State<SplashScreenTwo> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) {
        return const IntroScreens();
      }), (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: pngImage(Images.topLeftRectanglr,
                  width: MediaQuery.of(context).size.width * 0.63),
            ),
            Center(
              child: pngImage(Images.logo, width: 200),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: pngImage(Images.bottomCenter,
                  width: MediaQuery.of(context).size.width * 0.75),
            ),
          ],
        ),
      ),
    );
  }
}
