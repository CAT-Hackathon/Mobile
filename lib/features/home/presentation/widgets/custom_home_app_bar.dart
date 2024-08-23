import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:met2ashara_app/core/theme/app_pallete.dart';
import 'package:met2ashara_app/core/theme/styles.dart';
import 'package:met2ashara_app/core/utils/assets/images.dart';
import 'package:met2ashara_app/core/utils/extensions/widget_extensions.dart';
import 'package:met2ashara_app/core/utils/strings.dart';

PreferredSize homeAppBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(100.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.location,
              style: Styles.roboto400(fontSize: 12),
            ),
            4.verticalSpace,
            Row(
              children: [
                SvgPicture.asset(Assets.iconsLocation),
                4.horizontalSpace,
                Text(
                  'Egypt , Mansoura',
                  style:
                      Styles.roboto400(fontSize: 14, color: AppPalette.black),
                )
              ],
            )
          ],
        ),
        Row(
          children: [
            SvgPicture.asset(Assets.iconsChat),
            4.horizontalSpace,
            SvgPicture.asset(Assets.iconsNotification),
          ],
        )
      ],
    ).paddingAll(16),
  );
}
