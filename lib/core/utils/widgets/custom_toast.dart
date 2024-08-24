import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:met2ashara_app/core/resources/dimentions_manager.dart';
import 'package:met2ashara_app/core/theme/app_pallete.dart';
import 'package:met2ashara_app/core/theme/styles.dart';
import 'package:met2ashara_app/core/utils/assets/images.dart';
import 'package:met2ashara_app/core/utils/extensions/widget_extensions.dart';

class CustomToast extends StatelessWidget {
  const CustomToast({super.key, required this.isError, required this.text});

  final bool isError;
  final String text;

  @override
  Widget build(BuildContext context) {
    final Color color =
        isError ? AppPalette.errorColor : AppPalette.successColor;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14).w,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(30).r),
      child: Row(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            isError ? Assets.iconsWarning : Assets.iconsDone,
            height: 20,
            width: 20,
          ),
          AppSize.s8.w.horizontalSpace,
          Text(text,
                  maxLines: 2,
                  style: Styles.roboto600(
                      fontSize: 14, color: AppPalette.lightBackgroundColor))
              .fit(alignment: Alignment.center)
              .flexible()
        ],
      ),
    ).paddingHorizontal(AppSize.screenPadding);
  }
}
