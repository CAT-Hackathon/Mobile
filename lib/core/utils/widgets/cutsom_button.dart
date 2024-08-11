import 'package:flutter/material.dart';
import 'package:met2ashara_app/core/theme/app_pallete.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.backgroundColor,
      this.borderRadius,
      required this.text,
      this.onPressed,
      this.height,
      this.width});

  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final String text;
  final void Function()? onPressed;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 56,
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor ?? AppPallete.primary,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(12))),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(color: AppPallete.whiteColor),
        ),
      ),
    );
  }
}
