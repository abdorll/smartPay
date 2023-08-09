import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:smart_pay/utils/colors.dart';
import 'package:smart_pay/utils/colors.dart';



// ignore: must_be_immutable
class OtpField extends StatefulWidget {
  int inputFieldLength;
  OtpField({this.inputFieldLength = 4, super.key});

  @override
  State<OtpField> createState() => _OtpFieldState();
}

class _OtpFieldState extends State<OtpField> {
  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Center(
        child: Pinput(
          controller: pinController,
          length: widget.inputFieldLength,
          focusNode: focusNode,
          androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
          listenForMultipleSmsOnAndroid: true,
          defaultPinTheme: defaultPinTheme,
          separatorBuilder: (index) => const SizedBox(width: 8),
          // validator: (value) {
          //   return value == '2222' ? null : 'Pin is incorrect';
          // },
          // onClipboardFound: (value) {
          //   debugPrint('onClipboardFound: $value');
          //   pinController.setText(value);
          // },
          hapticFeedbackType: HapticFeedbackType.lightImpact,
          onCompleted: (pin) {
            debugPrint('onCompleted: $pin');
          },
          onChanged: (value) {
            debugPrint('onChanged: $value');
          },
          cursor: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 9),
                width: 22,
                height: 1,
                color: focusedBorderColor,
              ),
            ],
          ),
          focusedPinTheme: defaultPinTheme.copyWith(
            decoration: defaultPinTheme.decoration!.copyWith(
              borderRadius: BorderRadius.circular(9),
              border: Border.all(color: focusedBorderColor),
            ),
          ),
        // disabledPinTheme: ,
          submittedPinTheme: defaultPinTheme.copyWith(
            decoration: defaultPinTheme.decoration!.copyWith(
              color: fillColor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: focusedBorderColor),
            ),
          ),
          errorPinTheme: defaultPinTheme.copyBorderWith(
            border: Border.all(color: Colors.redAccent),
          ),
        ),
      ),
    );
  }
}

final pinController = TextEditingController();
final focusNode = FocusNode();
final formKey = GlobalKey<FormState>();

Color focusedBorderColor = purple;
const fillColor = Color.fromRGBO(243, 246, 249, 0);
 Color borderColor = purple.withOpacity(0.7);

final defaultPinTheme = PinTheme(
  width: 56, 
  height: 56,
  textStyle: const TextStyle(
    fontSize: 22,
    color: Color.fromRGBO(30, 60, 87, 1),
  ),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(9),
    border: Border.all(color: borderColor),
  ),
);