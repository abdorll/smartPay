import 'package:flutter/material.dart';
import 'package:smart_pay/screens/account_creation/setup_your_account_screen.dart';
import 'package:smart_pay/utils/colors.dart';
import 'package:smart_pay/widget/appbar_paged.dart';
import 'package:smart_pay/widget/major_button.dart';
import 'package:smart_pay/widget/otp_field.dart';
import 'package:smart_pay/widget/spacing.dart';
import 'package:smart_pay/widget/texts.dart';

class VerifyEmailScreen extends StatefulWidget {
  static const String verifyEmailScreen = "verifyEmailScreen";
  const VerifyEmailScreen({super.key});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PagedAppbar(
                    title: "Verify Email",
                    subtitle:
                        "Please check your email for confirmation mail. Copy the code in the mail to verify"),
                YMargin(30),
                OtpField(
                  inputFieldLength: 6,
                  size: 40,
                  color: grey2,
                ),
                YMargin(20),
                TextOf("Didn't receive any code, Resend", 15.48, purple,
                    FontWeight.w400)
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  MajorButton(
                      buttonText: "Continue",
                      buttonAction: () {
                        Navigator.pushNamed(
                            context, SetupYourAccount.setupYourAccount);
                      }),
                  YMargin(30)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
