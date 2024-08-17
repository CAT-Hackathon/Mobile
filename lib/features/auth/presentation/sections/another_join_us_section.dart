import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:met2ashara_app/core/theme/app_pallete.dart';
import 'package:met2ashara_app/core/theme/styles.dart';
import 'package:met2ashara_app/core/utils/assets/images.dart';
import 'package:met2ashara_app/core/utils/extensions/widget_extensions.dart';

class AnotherJoinUsSection extends StatefulWidget {
  const AnotherJoinUsSection(
      {super.key,
      required this.anotherMethode,
      required this.dontOrAlreadyTxt,
      required this.joinMethodTxt,
      this.onJoinMethodTap});
  final String anotherMethode, dontOrAlreadyTxt, joinMethodTxt;
  final void Function()? onJoinMethodTap;

  @override
  State<AnotherJoinUsSection> createState() => _AnotherJoinUsSectionState();
}

class _AnotherJoinUsSectionState extends State<AnotherJoinUsSection> {
  List<String> socialIcons = [
    Assets.imagesAppleIcon,
    Assets.imagesGoogleIcon,
    Assets.imagesFacebookIcon
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Divider(),
            6.horizontalSpace,
            Text(
              widget.anotherMethode,
              style: Styles.roboto400(fontSize: 12),
            ),
            6.horizontalSpace,
            Divider(),
          ],
        ),
        49.verticalSpace,
        Wrap(
          spacing: 56.w,
          children: List.generate(socialIcons.length, (index) {
            return Image.asset(socialIcons[index]);
          }),
        ),
        33.verticalSpace,
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: widget.dontOrAlreadyTxt,
                  style: Styles.roboto400(fontSize: 12)),
              TextSpan(
                  text: ' | ',
                  style: Styles.roboto500(
                          fontSize: 18,
                          color:
                              AppPalette.black.withOpacity(0.6000000238418579))
                      .copyWith(height: .08)),
              TextSpan(
                  text: widget.joinMethodTxt,
                  style:
                      Styles.roboto700(fontSize: 14, color: AppPalette.primary),
                  recognizer: TapGestureRecognizer()
                    ..onTap = widget.onJoinMethodTap),
            ],
          ),
        )
      ],
    ).paddingHorizontal(32);
  }
}
