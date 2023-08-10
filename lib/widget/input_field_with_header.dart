// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:smart_pay/utils/colors.dart';
import 'package:smart_pay/widget/spacing.dart';
import 'package:smart_pay/widget/text_field.dart';
import 'package:smart_pay/widget/texts.dart';

class InputFieldWithHeader extends StatefulWidget {
  String? title, hintText;
  double? size;
  Color? color;
  InputFieldWithHeader(
      {this.hintText, required this.title, this.size, this.color, super.key});

  @override
  State<InputFieldWithHeader> createState() => _InputFieldWithHeaderState();
}

class _InputFieldWithHeaderState extends State<InputFieldWithHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextOf(
              widget.title!,
              widget.size ?? 12,
              widget.color ?? grey,
              FontWeight.w400,
              align: TextAlign.left,
            ),
          ],
        ),
        YMargin(5),
        InputField(
          hintText: widget.hintText ?? widget.title,
          hasBorder: true,
        )
      ],
    );
  }
}
