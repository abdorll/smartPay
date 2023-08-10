import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

String assetPath(String imageName, {bool isSvg = false}) {
  return 'assets/images/${isSvg == true ? "svg_image/" : ""}$imageName.${isSvg == true ? "svg" : "png"}';
}

Widget pngImage(String imageName, {double? height, double? width}) {
  return Image.asset(
    assetPath(imageName),
    height: height,
    width: width,
  );
}

Widget svgImage(String imageName, {double? height, double? width}) {
  return SvgPicture.asset(
    assetPath(imageName, isSvg: true),
    semanticsLabel: imageName,
    height: height!,
    width: width!,
    fit: BoxFit.cover,
  );
}

class Images {
  static String logo = 'logo';
  static String topRight = 'top_right';
  static String bottomLeft = 'bottom_left';
  static String slide1 = 'slide1';
  static String slide2 = 'slide2';
  static String slide3 = 'slide3';
  static String slide4 = 'slide4';
  static String fingerprint = 'fingerprint';
  static String back = 'back';
  static String whiteLogo = "smartpay_white";
  static String mail = 'mail';
  static String purpleBackground = "splash_screen_background";
  static String topLeftRectanglr = "top_left_rectangle";
  static String bottomCenter = "bottom_center";
  static String atSymbol = "at_symbol";
  static String lock = "lock";
  static String infoIcon = "info_icon";
  static String starBadge = "star_badge";
  static String faceScanner = "face_scanner";
  static String greyWeb = "grey_web";
}
