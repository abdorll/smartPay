import 'package:flutter/material.dart';
import 'package:smart_pay/widget/spacing.dart';
import 'package:smart_pay/widget/texts.dart';

class PageNotFound extends StatelessWidget {
  static const String pageNotFound = "pageNotFound";
  const PageNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.sentiment_dissatisfied_rounded, color: Colors.red, size: 50,),
            YMargin(10),
            TextOf("Page not found!", 15, Colors.red, FontWeight.w400)
          ],
        ),
      ),
    );
  }
}
