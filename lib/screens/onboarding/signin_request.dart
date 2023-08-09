import 'package:flutter/material.dart';
import 'package:smart_pay/screens/account_creation/signup_screen.dart';
import 'package:smart_pay/screens/signin_options/signin_screen.dart';
import 'package:smart_pay/utils/colors.dart';
import 'package:smart_pay/utils/images.dart';
import 'package:smart_pay/widget/spacing.dart';
import 'package:smart_pay/widget/texts.dart';

class RequestSignIn extends StatefulWidget {
  static const String requestSignIn = "sequestSignIn";
  const RequestSignIn({super.key});

  @override
  State<RequestSignIn> createState() => _RequestSignInState();
}

class _RequestSignInState extends State<RequestSignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ShaderMask(
            shaderCallback: (mask) => LinearGradient(colors: [
              purple.withOpacity(0.1),
              purple.withOpacity(1),
            ], begin: Alignment.center, end: Alignment.bottomCenter)
                .createShader(mask),
            blendMode: BlendMode.darken,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(assetPath(Images.slide4)),
                      fit: BoxFit.cover)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Column(
              children: [
                Expanded(
                  flex: 7,
                  child: Container(),
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      pngImage(Images.whiteLogo),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, LoginScreen.loginScreen);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15)),
                          width: 240,
                          height: 70,
                          child: Center(
                            child:
                                TextOf('SignIn', 25, purple, FontWeight.w500),
                          ),
                        ),
                      ),
                      const YMargin(10),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, SignupScreen.signupScreen);
                                  },
                                  child: TextOf(
                                      'Signup', 20, white, FontWeight.w600))
                            ],
                          )
                        ],
                      ))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
