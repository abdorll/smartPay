import 'package:flutter/material.dart';
import 'package:smart_pay/utils/colors.dart';
import 'package:smart_pay/utils/images.dart';
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
        padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: pngImage(Images.back, height: 15))
                ],
              ),
              const YMargin(50),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: TextOf(
                          'Hi,',
                          30,
                          purple,
                          FontWeight.w600,
                          align: TextAlign.left,
                        )),
                      ],
                    ),
                    const YMargin(7),
                    Row(
                      children: [
                        Expanded(
                            child: TextOf(
                          "Let’s start with your email address.\nwe advise that you use the email logged in on\nthis phone",
                          15,
                          black,
                          FontWeight.w400,
                          align: TextAlign.left,
                        )),
                      ],
                    )
                  ],
                ),
              ),
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
              InkWell(
                onTap: () {
                  showDialog(
                      barrierColor: purple.withOpacity(0.3),
                      context: context,
                      builder: (context) {
                        return Dialog(
                          insetPadding: EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            height: MediaQuery.of(context).size.width * 0.6,
                            padding: EdgeInsets.symmetric(
                                vertical: 25, horizontal: 5),
                            width: double.infinity,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                pngImage(Images.mail, height: 55),
                                YMargin(30),
                                TextOf('Check your mail!', 30, purple,
                                    FontWeight.w800),
                                YMargin(15),
                                TextOf(
                                    'We have sent a 6 - digit code to your mail for verification.\nPlease copy the code to verify you email address',
                                    12,
                                    black,
                                    FontWeight.w400)
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 13),
                  decoration: BoxDecoration(
                      color: purple, borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: TextOf('Continue', 20, white, FontWeight.w600),
                  ),
                ),
              ),
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
