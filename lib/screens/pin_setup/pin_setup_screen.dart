import 'package:flutter/material.dart';
import 'package:smart_pay/utils/colors.dart';
import 'package:smart_pay/widget/appbar_paged.dart';
import 'package:smart_pay/widget/major_button.dart';
import 'package:smart_pay/widget/otp_field.dart';
import 'package:smart_pay/widget/spacing.dart';

class PinSetupScreen extends StatefulWidget {
  static const String pinSetupScreen = "pinSetupScreen";

  const PinSetupScreen({super.key});

  @override
  State<PinSetupScreen> createState() => _PinSetupScreenState();
}

class _PinSetupScreenState extends State<PinSetupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Stack(
          children: [
            Column(
              children: [
                PagedAppbar(
                    title: 'Set Transaction Pin',
                    subtitle:
                        "This info need to be accurate with your ID document"),
                YMargin(20),
                OtpField(
                  inputFieldLength: 4,
                  color: purple.withOpacity(0.04),
                )
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
                        Navigator.pushNamed(context,
                            ConfirmSetupPinScreen.confirmSetupPinScreen);
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

class ConfirmSetupPinScreen extends StatefulWidget {
  static const String confirmSetupPinScreen = "confirmSetupPinScreen";

  const ConfirmSetupPinScreen({super.key});

  @override
  State<ConfirmSetupPinScreen> createState() => _ConfirmSetupPinScreenState();
}

class _ConfirmSetupPinScreenState extends State<ConfirmSetupPinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Stack(
          children: [
            Column(
              children: [
                PagedAppbar(
                    title: 'Confirm Pin',
                    subtitle:
                        "This info need to be accurate with your ID document"),
                YMargin(20),
                OtpField(
                  inputFieldLength: 4,
                  color: purple.withOpacity(0.04),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  MajorButton(buttonText: "Continue", buttonAction: () {}),
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
