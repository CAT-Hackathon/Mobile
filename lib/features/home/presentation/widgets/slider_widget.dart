import 'package:flutter/material.dart';
import 'package:met2ashara_app/core/theme/app_pallete.dart';
import 'package:met2ashara_app/core/theme/styles.dart';
import 'package:met2ashara_app/core/utils/extensions/widget_extensions.dart';
import 'package:met2ashara_app/core/utils/widgets/background_circles_widget.dart';
import 'package:met2ashara_app/features/home/data/models/slider_model.dart';

Stack sliderWidget(int index) {
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppPalette.primary),
          child: Text(
            sliderImages[index].imageText ?? "",
            style: Styles.roboto400(fontSize: 16),
            textAlign: TextAlign.center,
          ).center().paddingHorizontal(60)),
      const BackgroundCirclesWidget(
        color: AppPalette.lightBackgroundColor,
        radius: 17,
        right: -15,
      ),
      const BackgroundCirclesWidget(
        color: AppPalette.lightBackgroundColor,
        radius: 17,
        left: -15,
      )
    ],
  );
}
