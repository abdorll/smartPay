import 'package:flutter/material.dart';
import 'package:smart_pay/utils/colors.dart';
import 'package:smart_pay/utils/images.dart';
import 'package:smart_pay/widget/major_button.dart';
import 'package:smart_pay/widget/spacing.dart';
import 'package:smart_pay/widget/texts.dart';

class AlerDialog {
  static showAlertDialog(BuildContext context,
      {required String title,
      required String subtitle,
      bool hasSkip = true,
      required VoidCallback callBack}) {
    showDialog(
        barrierColor: black.withOpacity(0.7),
        context: context,
        builder: (context) {
          return Dialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            insetAnimationCurve: Curves.easeInCirc,
            insetPadding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  pngImage(Images.starBadge, height: 100),
                  YMargin(30),
                  TextOf(title, 24, purple, FontWeight.w800),
                  YMargin(15),
                  TextOf(subtitle, 10, black, FontWeight.w400),
                  YMargin(30),
                  MajorButton(
                      buttonText: "Continue",
                      buttonAction: () {
                        callBack();
                      }),
                  YMargin(3),
                  hasSkip == true
                      ? InkWell(
                          onTap: () {},
                          child: TextOf("Skip", 16, purple, FontWeight.w600),
                        )
                      : Container()
                ],
              ),
            ),
          );
        });
  }
}
