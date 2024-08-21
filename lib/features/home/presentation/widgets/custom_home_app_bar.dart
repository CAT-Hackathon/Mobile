import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:met2ashara_app/core/theme/app_pallete.dart';
import 'package:met2ashara_app/core/theme/styles.dart';
import 'package:met2ashara_app/core/utils/assets/images.dart';
import 'package:met2ashara_app/core/utils/extensions/widget_extensions.dart';
import 'package:met2ashara_app/core/utils/strings.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.location,
              style: Styles.roboto400(fontSize: 12),
            ),
            Row(
              children: [
                SvgPicture.asset(Assets.iconsLocation),
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
    ).paddingAll(16);
  }
}
