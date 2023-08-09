import 'package:flutter/material.dart';
import 'package:smart_pay/screens/account_creation/signup_screen.dart';
import 'package:smart_pay/utils/colors.dart';
import 'package:smart_pay/utils/images.dart';
import 'package:smart_pay/widget/spacing.dart';
import 'package:smart_pay/widget/texts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String loginScreen  ="loginScreen";
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
        child: SingleChildScrollView(
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
                  TextOf('Welcome back', 24, purple, FontWeight.w600, align: TextAlign.left,),
                ],
              ),
              const YMargin(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextOf('Enter your username and password', 12, black, FontWeight.w400, align: TextAlign.left,),
                ],
              ),
              const YMargin(100),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: 'Username or Email',
                    hintStyle: TextStyle(
                        color: Colors.grey.withOpacity(0.5),
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.withOpacity(0.5)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 0.8, color: purple))),
              ),
              const YMargin(20),
              TextFormField(
                keyboardType: TextInputType.name,
                obscureText: isVisible,
                decoration: InputDecoration(
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
                    hintText: 'Password',
                    hintStyle: TextStyle(
                        color: Colors.grey.withOpacity(0.5),
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.withOpacity(0.5)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 0.8, color: purple))),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SignupScreen();
                  }));
                },
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 11),
                  decoration: BoxDecoration(
                      color: purple, borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: TextOf('Login', 20, white, FontWeight.w600),
                  ),
                ),
              ),
              const YMargin(20),
              TextOf('Create account', 18, purple, FontWeight.w400),
              const YMargin(70),
              pngImage(Images.fingerprint, height: 55),
              const YMargin(14),
              TextOf('Scan to login', 18, purple, FontWeight.w400),
            ],
          ),
        ),
      ),
    );
  }
}