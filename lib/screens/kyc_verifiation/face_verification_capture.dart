import 'package:flutter/material.dart';
import 'package:smart_pay/rough.dart';
import 'package:smart_pay/screens/account_creation/register_screen.dart';
import 'package:smart_pay/screens/account_creation/signup_screen.dart';
import 'package:smart_pay/utils/colors.dart';
import 'package:smart_pay/widget/major_button.dart';
import 'package:smart_pay/widget/spacing.dart';
import 'package:smart_pay/widget/texts.dart';

class FaceVerificationCaaptureScreen extends StatefulWidget {
  static const String faceVerificationCaaptureScreen =
      "faceVerificationCaaptureScreen";
  const FaceVerificationCaaptureScreen({super.key});

  @override
  State<FaceVerificationCaaptureScreen> createState() =>
      _FaceVerificationCaaptureScreenState();
}

class _FaceVerificationCaaptureScreenState
    extends State<FaceVerificationCaaptureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                CaptureFace(),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(color: purple.withOpacity(0.4)),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  YMargin(50),
                  TextOf("Position your face in the middle of the frame", 12,
                      purple, FontWeight.w400),
                  YMargin(30),
                  MajorButton(
                      buttonText: "Capture",
                      buttonAction: () {
                        Navigator.pushNamed(
                            context, RegistertScreen.registertScreen);
                      }),
                  YMargin(10)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
