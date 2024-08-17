import 'package:flutter/material.dart';
import 'package:met2ashara_app/core/theme/app_pallete.dart';
import 'package:met2ashara_app/core/theme/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.backgroundColor,
      this.borderRadius,
      required this.text,
      this.onPressed,
      this.height,
      this.width,
      this.txtColor,
      this.fontSize});

  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final String text;
  final void Function()? onPressed;
  final double? height;
  final double? width;
  final Color? txtColor;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 56,
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor ?? AppPalette.primary,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(12))),
        onPressed: onPressed,
        child: Text(
          text,
          style: Styles.roboto700(
              fontSize: fontSize ?? 16,
              color: txtColor ?? AppPalette.lightBackgroundColor),
        ),
      ),
    );
  }
}
