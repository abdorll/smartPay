import 'package:flutter/material.dart';
import 'package:smart_pay/screens/signin_options/request_login.dart';
import 'package:smart_pay/utils/colors.dart';
import 'package:smart_pay/utils/images.dart';
import 'package:smart_pay/widget/spacing.dart';
import 'package:smart_pay/widget/texts.dart';

class RequestSignIn extends StatefulWidget {
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const Login();
                          }));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15)),
                          width: 240,
                          height: 70,
                          child: Center(
                            child: TextOf(
                                'RequestSignIn', 25, purple, FontWeight.w500),
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
                              TextOf('Signup', 20, white, FontWeight.w600)
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
