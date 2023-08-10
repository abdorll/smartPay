import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_pay/helper/dialog.dart';
import 'package:smart_pay/screens/pin_setup/pin_setup_screen.dart';
import 'package:smart_pay/utils/colors.dart';
import 'package:smart_pay/widget/appbar_paged.dart';
import 'package:smart_pay/widget/input_field_with_header.dart';
import 'package:smart_pay/widget/major_button.dart';
import 'package:smart_pay/widget/spacing.dart';
import 'package:smart_pay/widget/texts.dart';

class RegistertScreen extends StatefulWidget {
  static const String registertScreen = "registertScreen";
  const RegistertScreen({super.key});

  @override
  State<RegistertScreen> createState() => _RegistertScreenState();
}

class _RegistertScreenState extends State<RegistertScreen> {
  DateTime initialDate = DateTime(2023, 01, 12);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              PagedAppbar(
                  title: "WELCOME,", subtitle: "Let’s get to know you more."),
              YMargin(10),
              InputFieldWithHeader(
                title: "First Name",
                hintText: "Enter First name",
              ),
              YMargin(10),
              InputFieldWithHeader(
                title: "Last Name",
                hintText: "Enter Last name",
              ),
              YMargin(10),
              InputFieldWithHeader(
                title: "Phone number",
                hintText: "Enter Phone number",
              ),
              YMargin(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextOf(
                    "Date of birth",
                    12,
                    Colors.grey,
                    FontWeight.w400,
                    align: TextAlign.left,
                  ),
                ],
              ),
              YMargin(5),
              InkWell(
                onTap: () {
                  showDatePicker(
                    context: context,
                    initialDate: initialDate,
                    // currentDate: ,
                    firstDate: DateTime(1912, 01, 12),
                    lastDate: DateTime(2023, 01, 12),
                    onDatePickerModeChange: (value) {
                      // initialDate = DatePickerEntryMode.calendar;
                    },
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(0.5)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [TextOf("DD/MM/YY", 15, grey, FontWeight.w400)],
                  ),
                ),
              ),
              YMargin(10),
              InputFieldWithHeader(
                title: "How did you hear about Smartpay",
                hintText: "Please select an option",
              ),
              YMargin(30),
              MajorButton(
                  buttonText: "Continue",
                  buttonAction: () {
                    AlerDialog.showAlertDialog(context,
                        hasSkip: false,
                        title: 'Almost Done!',
                        buttonText: "Set PIN",
                        subtitle:
                            'Your account have been created successfully.\nNow, set up your transaction pin and start.',
                        callBack: () {
                      Navigator.pushNamed(
                          context, PinSetupScreen.pinSetupScreen);
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
