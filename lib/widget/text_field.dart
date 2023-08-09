// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:smart_pay/utils/colors.dart';

class InputField extends StatelessWidget {
  InputField(
      {required this.hintText,
      this.prefixIcon,
      this.hasBorder = false,
      this.obscureText=false,
      this.suffixIcon,
      super.key});
  String? hintText;
  bool hasBorder;
  Widget? prefixIcon;
  Widget? suffixIcon;
  bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      obscureText: obscureText,
      decoration: InputDecoration(
          hintText: hintText,
          prefixIconConstraints: BoxConstraints(
              minWidth: 25, minHeight: 25, maxHeight: 25, maxWidth: 25),
          prefixIcon: Padding(
            padding:   EdgeInsets.only(right: 5),
            child: prefixIcon,
          ),
          hintStyle: TextStyle(
              color: Colors.grey.withOpacity(0.5),
              fontSize: 15,
              fontWeight: FontWeight.w300),
          suffixIconConstraints: BoxConstraints(
              minWidth: 25, minHeight: 25, maxHeight: 25, maxWidth: 25),
          suffixIcon: suffixIcon,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          enabledBorder: hasBorder == true
              ? OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.withOpacity(0.5)),
                  borderRadius: BorderRadius.circular(15),
                )
              : null,
          border: InputBorder.none,
          focusedBorder: hasBorder == true
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(width: 0.8, color: purple))
              : null),
    );
  }
}
