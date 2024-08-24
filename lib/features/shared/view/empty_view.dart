import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:met2ashara_app/core/resources/dimentions_manager.dart';
import 'package:met2ashara_app/core/utils/extensions/widget_extensions.dart';
import 'package:met2ashara_app/core/utils/widgets/cutsom_button.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({
    super.key,
    required this.icon,
    required this.title,
    this.buttonLabel,
    this.onButtonPressed,
    this.padding = AppSize.s55,
  });

  final Widget icon;
  final String title;
  final String? buttonLabel;
  final Function()? onButtonPressed;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        icon,
        Text(title).center(),
        AppSize.s45.verticalSpace,
        if (buttonLabel != null)
          CustomButton(
            text: buttonLabel!,
            borderRadius: BorderRadius.circular(16),
            onPressed: onButtonPressed ?? () {},
          ),
      ],
    ).paddingHorizontal(padding.sp).center();
  }
}
