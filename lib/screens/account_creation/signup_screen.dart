import 'package:flutter/material.dart';
import 'package:smart_pay/screens/account_creation/verify_email_creen.dart';
import 'package:smart_pay/utils/colors.dart';
import 'package:smart_pay/utils/images.dart';
import 'package:smart_pay/widget/appbar_paged.dart';
import 'package:smart_pay/widget/major_button.dart';
import 'package:smart_pay/widget/spacing.dart';
import 'package:smart_pay/widget/texts.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});
  static const String signupScreen = "signup";
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              PagedAppbar(
                  title: 'Hi, Welcome',
                  subtitle:
                      "Let’s start with your email address.\nwe advise that you use the email logged in on\nthis phone"),
              YMargin(MediaQuery.of(context).size.height * 0.2),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email Address',
                  hintStyle:
                      TextStyle(color: black, fontWeight: FontWeight.w400),
                  contentPadding: const EdgeInsets.only(top: 25, right: 100),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(
                      top: 25,
                    ),
                    child: Icon(
                      Icons.email_rounded,
                      color: black,
                      size: 17,
                    ),
                  ),
                ),
              ),
              YMargin(MediaQuery.of(context).size.height * 0.3),
              MajorButton(
                  buttonText: "Continue",
                  buttonAction: () {
                    Navigator.pushNamed(
                        context, VerifyEmailScreen.verifyEmailScreen);
                  }),
              YMargin(10),
              TextOf('By signing up, you agrtee to our', 17, black,
                  FontWeight.w400),
              TextOf('Terms of Service & Privacy Policy', 15, purple,
                  FontWeight.w600)
            ],
          ),
        ),
      ),
    );
  }
}
