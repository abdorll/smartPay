import 'package:flutter/material.dart';
import 'package:smart_pay/helper/dialog.dart';
import 'package:smart_pay/utils/colors.dart';
import 'package:smart_pay/widget/appbar_paged.dart';
import 'package:smart_pay/widget/input_field_with_header.dart';
import 'package:smart_pay/widget/major_button.dart';
import 'package:smart_pay/widget/spacing.dart';
import 'package:smart_pay/widget/text_field.dart';
import 'package:smart_pay/widget/texts.dart';

class SetupYourAccount extends StatefulWidget {
  static const String setupYourAccount = "setupYourAccount";
  const SetupYourAccount({super.key});

  @override
  State<SetupYourAccount> createState() => _SetupYourAccountState();
}

class _SetupYourAccountState extends State<SetupYourAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Stack(children: [
        Column(children: [
          PagedAppbar(
              title: 'Set up your account',
              subtitle: "Create a Username for your account"),
          YMargin(10),
          InputFieldWithHeader(
            title: "Enter Smartpay tag",
            color: black,
            size: 15,
          ),
          YMargin(15),
          InputFieldWithHeader(
            title: "Password",
            color: black,
            size: 15,
          ),
          YMargin(15),
          InputFieldWithHeader(
            title: "Confirm Password",
            hintText: "Enter password again",
            color: black,
            size: 15,
          ),
        ]),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: white,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                MajorButton(
                    buttonText: "Continue",
                    buttonAction: () {
                      AlerDialog.showAlertDialog(context,
                          title: 'Congratulations',
                          subtitle:
                              'Your account have been created successfully.Now, Verify your account with your BVN.',
                          callBack: () {});
                    }),
                YMargin(30)
              ],
            ),
          ),
        )
      ]),
    ));
  }
}
