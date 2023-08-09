import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextOf extends StatelessWidget {
  TextOf(this.text, this.size, this.color, this.weight,
      {this.align = TextAlign.center,
      this.decoration = TextDecoration.none,
      this.height = 0,
      // this.textOverFlow = TextOverflow.visible,
      this.wordSpacing = 0,
      Key? key})
      : super(key: key);
  String text;
  Color color;
  TextAlign align;
  double size;

  // TextOverflow  textOverFlow;
  TextDecoration decoration;
  FontWeight weight;
  double height;
  double wordSpacing;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: align,
        style: GoogleFonts.poppins(
            decoration: decoration,
            color: color,
            fontSize: size,
            height: height,
            fontWeight: weight));
  }
}