import 'package:flutter/material.dart';
import 'package:smart_pay/utils/colors.dart';

Future myBottomSheet(BuildContext context, {required Widget child}) async {
  return await showModalBottomSheet(
      barrierColor: black.withOpacity(0.4), 
      backgroundColor:Colors.transparent,
      isDismissible: true,
      isScrollControlled: true,
      context: context,
      builder: (context) => Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25), color: white),
            child: child,
          ));
}
