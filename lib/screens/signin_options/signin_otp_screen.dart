import 'package:flutter/material.dart';
import 'package:smart_pay/utils/colors.dart';
import 'package:smart_pay/utils/images.dart';
import 'package:smart_pay/widget/appbar_paged.dart';
import 'package:smart_pay/widget/major_button.dart';
import 'package:smart_pay/widget/otp_field.dart';
import 'package:smart_pay/widget/spacing.dart';
import 'package:smart_pay/widget/texts.dart';

class SignInOtpScreen extends StatefulWidget {
  static const String signInOtpScreen = "signInOtpScreen";
  const SignInOtpScreen({super.key});

  @override
  State<SignInOtpScreen> createState() => _SignInOtpScreenState();
}

class _SignInOtpScreenState extends State<SignInOtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            PagedAppbar(
                title: 'Welcome Back, Robert',
                subtitle: 'Enter your 4-digit Pin'),
            const YMargin(20),
            OtpField(),
            YMargin(20),
            MajorButton(
                buttonText: "Login",
                buttonAction: () {
                  Navigator.pushNamed(context, SignInOtpScreen.signInOtpScreen);
                }),
            const YMargin(10),
            TextOf('Create account', 15, purple, FontWeight.w400),
            const YMargin(50),
            pngImage(Images.fingerprint, height: 55),
            const YMargin(9),
            TextOf('Scan to login', 15, black, FontWeight.w400),
          ],
        ),
      ),
    );
  }
}
