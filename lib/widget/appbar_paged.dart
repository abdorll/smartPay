// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:smart_pay/utils/colors.dart';
import 'package:smart_pay/utils/images.dart';
import 'package:smart_pay/widget/spacing.dart';
import 'package:smart_pay/widget/texts.dart';

class PagedAppbar extends StatelessWidget {
  PagedAppbar({required this.title, required this.subtitle,this.hasbackButton=true, super.key});
  String title, subtitle;
  bool hasbackButton;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        YMargin(50),
        hasbackButton==true? Row(
          children: [
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: pngImage(Images.back, height: 20))
          ],
        ):Container(),
        const YMargin(40),
        Container(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: TextOf(
                    title,
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
                    subtitle,
                    14,
                    black,
                    FontWeight.w400,
                    align: TextAlign.left,
                  )),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
