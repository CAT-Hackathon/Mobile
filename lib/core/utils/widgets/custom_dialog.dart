import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:met2ashara_app/core/theme/app_pallete.dart';
import 'package:met2ashara_app/core/theme/styles.dart';
import 'package:met2ashara_app/core/utils/strings.dart';
import 'package:met2ashara_app/core/utils/widgets/cutsom_button.dart';

void showCustomDialog({
  required BuildContext context,
  required String title,
  String? subTitle,
}) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        backgroundColor: AppPalette.lightBackgroundColor,
        child: Container(
          padding: EdgeInsets.all(24.r),
          decoration: BoxDecoration(
            color: AppPalette.lightBackgroundColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: Styles.roboto600(
                  fontSize: 22,
                  color: AppPalette.errorColor,
                ),
              ),
              16.verticalSpace,
              Text(
                subTitle ?? "",
                style: Styles.roboto500(
                  fontSize: 18,
                  color: AppPalette.greyColor,
                ),
                textAlign: TextAlign.center,
              ),
              16.verticalSpace,
              CustomButton(
                text: AppStrings.tryAgain,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}