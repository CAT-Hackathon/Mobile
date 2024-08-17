import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:met2ashara_app/core/theme/app_pallete.dart';
import 'package:met2ashara_app/core/theme/styles.dart';
import 'package:met2ashara_app/core/utils/strings.dart';
import 'package:pinput/pinput.dart';

class CustomOtpField extends StatefulWidget {
  final int length;
  final TextEditingController? controller;
  final void Function(String)? onCompleted;
  const CustomOtpField({
    super.key,
    this.length = 4,
    this.controller,
    this.onCompleted,
  });

  @override
  State<CustomOtpField> createState() => _CustomOtpFieldState();
}

class _CustomOtpFieldState extends State<CustomOtpField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.enterYourCode,
          style: Styles.roboto500(fontSize: 18),
        ),
        16.verticalSpace,
        Center(
          child: Directionality(
            textDirection: ui.TextDirection.ltr,
            child: Pinput(
              length: widget.length,
              controller: widget.controller,
              defaultPinTheme: PinTheme(
                padding: EdgeInsets.zero,
                height: 54.h,
                width: 51.w,
                textStyle: Styles.roboto500(fontSize: 22),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppPalette.primary,
                  ),
                  color: AppPalette.lightBackgroundColor,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              errorBuilder: (errorText, pin) {
                return Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    errorText!,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.red.shade700,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                );
              },
              validator: (s) {
                return s!.trim().length == widget.length
                    ? null
                    : 'The code consists of ${widget.length} digits';
              },
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              onCompleted: widget.onCompleted,
            ),
          ),
        ),
      ],
    );
  }
}
