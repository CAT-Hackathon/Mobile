import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:met2ashara_app/core/theme/app_pallete.dart';
import 'package:met2ashara_app/core/theme/styles.dart';
import 'package:met2ashara_app/core/utils/assets/images.dart';
import 'package:met2ashara_app/core/utils/extensions/widget_extensions.dart';

class CustomSearchTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;

  const CustomSearchTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.onChanged,
    this.onFieldSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Styles.roboto400(fontSize: 14),
        prefixIcon: const Icon(
          Icons.search,
          color: AppPalette.greyColor,
        ),
        suffixIcon: IconButton(
          icon: SvgPicture.asset(Assets.iconsFilter),
          onPressed: () {},
        ),
        filled: true,
        fillColor: AppPalette.lightBackgroundColor,
        contentPadding: const EdgeInsets.all(16),
        border: OutlineInputBorder(
          borderRadius:
              BorderRadius.circular(30.0), // Circular border like in the image
          borderSide: BorderSide.none, // No border
        ),
      ),
    ).paddingHorizontal(16);
  }
}
