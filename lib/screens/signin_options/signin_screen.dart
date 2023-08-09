import 'package:flutter/material.dart';
import 'package:smart_pay/screens/account_creation/signup_screen.dart';
import 'package:smart_pay/utils/colors.dart';
import 'package:smart_pay/utils/images.dart';
import 'package:smart_pay/widget/spacing.dart';
import 'package:smart_pay/widget/text_field.dart';
import 'package:smart_pay/widget/texts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String loginScreen = "loginScreen";
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  YMargin(MediaQuery.of(context).size.height * 0.07),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [pngImage(Images.logo, height: 30)],
                  ),
                  const YMargin(50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextOf(
                        'Welcome back,',
                        24,
                        purple,
                        FontWeight.w600,
                        align: TextAlign.left,
                      ),
                    ],
                  ),
                  const YMargin(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextOf(
                        'Enter your username and password',
                        12,
                        black,
                        FontWeight.w400,
                        align: TextAlign.left,
                      ),
                    ],
                  ),
                  const YMargin(20),
                  Container(
                    padding: EdgeInsets.only(
                        left: 10, top: 10, bottom: 10, right: 5),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: grey,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        InputField(
                            hintText: "Username or Email",
                            prefixIcon: pngImage(Images.atSymbol, height: 20)),
                        Divider(
                          color: grey,
                        ),
                        InputField(
                          hintText: "Password",
                          obscureText: isVisible,
                          prefixIcon: pngImage(Images.lock, height: 20),
                          suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  isVisible = !isVisible;
                                });
                              },
                              child: Icon(
                                  isVisible == false
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility,
                                  color: isVisible == false
                                      ? purple
                                      : Colors.grey.withOpacity(0.5))),
                        ),
                      ],
                    ),
                  ),
                  const YMargin(7),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextOf('Forgot password?', 13, purple, FontWeight.w400)
                    ],
                  ),
                  const YMargin(7),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const SignupScreen();
                      }));
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 11),
                      decoration: BoxDecoration(
                          color: purple,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: TextOf('Login', 20, white, FontWeight.w600),
                      ),
                    ),
                  ),
                  const YMargin(10),
                  TextOf('Login with PIN', 15, purple, FontWeight.w400),
                  const YMargin(50),
                  pngImage(Images.fingerprint, height: 55),
                  const YMargin(9),
                  TextOf('Scan to login', 15, black, FontWeight.w400),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 20, top: 10),
                  decoration: BoxDecoration(color: white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextOf(
                          'New to Smartpay? Sign Up', 15, black, FontWeight.w500),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
