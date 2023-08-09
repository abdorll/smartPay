import 'package:flutter/material.dart';
import 'package:smart_pay/utils/colors.dart';
import 'package:smart_pay/widget/texts.dart';

class MajorButton extends StatelessWidget {
  MajorButton({required this.buttonText, required this.buttonAction, super.key});
  String? buttonText;
  void buttonAction;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        buttonAction;
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 11),
        decoration: BoxDecoration(
            color: purple, borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: TextOf(buttonText!, 20, white, FontWeight.w600),
        ),
      ),
    );
  }
}
