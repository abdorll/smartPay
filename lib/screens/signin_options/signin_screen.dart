import 'package:flutter/material.dart';
import 'package:smart_pay/screens/account_creation/signup_screen.dart';
import 'package:smart_pay/screens/signin_options/signin_otp_screen.dart';
import 'package:smart_pay/utils/colors.dart';
import 'package:smart_pay/utils/images.dart';
import 'package:smart_pay/widget/appbar_paged.dart';
import 'package:smart_pay/widget/major_button.dart';
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
                  PagedAppbar(
                      title: 'Welcome back,',
                      subtitle: 'Enter your username and password'),
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
                  MajorButton(
                      buttonText: "Login",
                      buttonAction: () {
                        Navigator.pushNamed(
                            context, SignInOtpScreen.signInOtpScreen);
                      }),
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
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, SignupScreen.signupScreen);
                        },
                        child: TextOf('New to Smartpay? Sign Up', 15, black,
                            FontWeight.w500),
                      ),
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
