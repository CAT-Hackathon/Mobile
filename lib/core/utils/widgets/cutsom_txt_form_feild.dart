import 'package:flutter/material.dart';
import 'package:met2ashara_app/core/theme/styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.onChanged,
    this.onFieldSubmitted,
    this.obscureText,
    this.prefixIcon,
    this.keyboardType,
    this.controller,
    this.validator,
    required this.hintText,
  });
  final String labelText;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final bool? obscureText;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType ?? TextInputType.name,
      validator: validator ??
          (value) {
            if (value!.isEmpty) {
              return "$hintText is required";
            } else {
              return null;
            }
          },
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Styles.roboto400(fontSize: 14),
        labelText: labelText,
        labelStyle: Styles.roboto400(fontSize: 14),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(16.0),
          child: prefixIcon,
        ),
      ),
    );
  }
}
