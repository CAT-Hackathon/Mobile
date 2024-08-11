import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:met2ashara_app/core/theme/app_pallete.dart';
import 'package:met2ashara_app/core/utils/widgets/cutsom_button.dart';
import 'package:met2ashara_app/features/on_boarding/data/model/on_boarding_model.dart';
import 'package:met2ashara_app/generated/l10n.dart';

class GetButtons extends StatelessWidget {
  const GetButtons(
      {super.key, required this.currentIndex, required this.controller});

  final int currentIndex;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBoardingData.length - 1) {
      return CustomButton(
        text: S().GetStarted,
        onPressed: () {},
      );
    } else {
      return Column(
        children: [
          CustomButton(
            text: S().Next,
            onPressed: () {
              controller.nextPage(
                  duration: const Duration(microseconds: 200),
                  curve: Curves.bounceIn);
            },
          ),
          16.verticalSpace,
          TextButton(
              onPressed: () {
                controller.jumpToPage(onBoardingData.length - 1);
              },
              child: Text(
                S().Skip,
                style: const TextStyle(
                    color: AppPallete.primary,
                    decoration: TextDecoration.underline),
              ))
        ],
      );
    }
  }
}
