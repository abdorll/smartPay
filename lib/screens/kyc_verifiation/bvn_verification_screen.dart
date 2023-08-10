import 'package:flutter/material.dart';
import 'package:smart_pay/screens/kyc_verifiation/face_verification_capture.dart';
import 'package:smart_pay/utils/colors.dart';
import 'package:smart_pay/utils/images.dart';
import 'package:smart_pay/widget/appbar_paged.dart';
import 'package:smart_pay/widget/input_field_with_header.dart';
import 'package:smart_pay/widget/major_button.dart';
import 'package:smart_pay/widget/my_botom_sheet.dart';
import 'package:smart_pay/widget/spacing.dart';
import 'package:smart_pay/widget/texts.dart';

class BvnVerificationScreen extends StatefulWidget {
  static const String bvnVerificationScreen = "bvnVerificationScreen";
  const BvnVerificationScreen({super.key});

  @override
  State<BvnVerificationScreen> createState() => _BvnVerificationScreenState();
}

class _BvnVerificationScreenState extends State<BvnVerificationScreen> {
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
                    title: "BVN Validation",
                    subtitle:
                        "We need to validate your BVN in order to give you an account number that allows you send and receive money from other banks"),
                YMargin(30),
                InputFieldWithHeader(
                  title: "Enter your BVN",
                  color: black,
                ),
                YMargin(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextOf("Dial *565*0#to check your BVN", 10, purple,
                        FontWeight.w400),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextOf("why BVN", 10, purple, FontWeight.w400),
                          XMargin(3),
                          Icon(
                            Icons.help_rounded,
                            size: 10,
                            color: black,
                          )
                        ],
                      ),
                    )
                  ],
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
                        myBottomSheet(context,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                YMargin(15),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    TextOf("Scan your Face", 20, purple,
                                        FontWeight.w400)
                                  ],
                                ),
                                YMargin(60),
                                pngImage(Images.faceScanner, height: 120),
                                YMargin(30),
                                TextOf(
                                    'To continue, you need to scan your face',
                                    12,
                                    black,
                                    FontWeight.w400),
                                YMargin(70),
                                MajorButton(
                                    buttonText: "Take a Selfie",
                                    buttonAction: () {
                                      Navigator.pushNamed(
                                          context,
                                          FaceVerificationCaaptureScreen
                                              .faceVerificationCaaptureScreen);
                                    })
                              ],
                            ));
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
