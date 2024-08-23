import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:met2ashara_app/core/theme/app_pallete.dart';
import 'package:met2ashara_app/core/theme/styles.dart';
import 'package:met2ashara_app/core/utils/assets/images.dart';
import 'package:met2ashara_app/core/utils/widgets/custom_location_and_counter_widget.dart';
import 'package:met2ashara_app/features/home/presentation/widgets/custom_person_image.dart';

class MentorCardContentWidget extends StatelessWidget {
  const MentorCardContentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const CustomPersonImage(),
            8.horizontalSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Amr Adel',
                    style: Styles.roboto400(
                        fontSize: 12, color: AppPalette.primary),
                  ),
                  Text(
                    'UI /UX Designer',
                    style: Styles.roboto400(
                        fontSize: 10, color: AppPalette.black),
                  ),
                  SizedBox(
                    width: 70.w,
                    child: const CustomLocationAndCounterWidget(
                      image: Assets.iconsEye,
                      location: 'Cairo',
                      count: '400',
                    ),
                  ),
                  4.verticalSpace,
                  Row(
                    children: List.generate(
                        5,
                        (index) => const Icon(
                              Icons.star,
                              size: 12,
                              color: Colors.amber,
                            )),
                  ),
                ],
              ),
            )
          ],
        ),
        8.verticalSpace,
        Text(
          "Experienced in guiding and training design teams.Skilled in providing direction and instructions to team members.",
          style: Styles.roboto400(
              fontSize: 10,
              color: AppPalette.black.withOpacity(0.6000000238418579)),
        )
      ],
    );
  }
}
