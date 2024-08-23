import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:met2ashara_app/core/theme/app_pallete.dart';
import 'package:met2ashara_app/core/theme/styles.dart';
import 'package:met2ashara_app/core/utils/widgets/background_circles_widget.dart';
import 'package:met2ashara_app/features/home/data/models/slider_model.dart';

Stack sliderWidget(int index) {
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: const LinearGradient(colors: [
                AppPalette.deepPrimaryColor,
                AppPalette.primary,
              ])),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: SizedBox(
                  width: 200,
                  child: Text(
                    sliderImages[index].imageText ?? "",
                    style: Styles.roboto400(
                        fontSize: 12, color: AppPalette.lightBackgroundColor),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ),
              16.horizontalSpace,
              Image.asset(sliderImages[index].imagePath)
            ],
          )),
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
