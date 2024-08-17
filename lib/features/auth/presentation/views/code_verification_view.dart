import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:met2ashara_app/core/theme/app_pallete.dart';
import 'package:met2ashara_app/core/theme/styles.dart';
import 'package:met2ashara_app/core/utils/assets/images.dart';
import 'package:met2ashara_app/core/utils/extensions/widget_extensions.dart';
import 'package:met2ashara_app/core/utils/strings.dart';
import 'package:met2ashara_app/core/utils/widgets/custom_otp_feild.dart';
import 'package:met2ashara_app/core/utils/widgets/cutsom_button.dart';
import 'package:met2ashara_app/features/auth/presentation/widgets/cutsom_auth_scaffold.dart';

class CodeVerificationView extends StatelessWidget {
  const CodeVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAuthScaffold(
        appBar: true,
        widget: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppStrings.codeVerification,
                style: Styles.roboto600(fontSize: 22),
              ),
              72.verticalSpace,
              SvgPicture.asset(Assets.iconsCodeVerification),
              32.verticalSpace,
              const CustomOtpField(
                length: 5,
              ),
              32.verticalSpace,
              const CustomButton(text: AppStrings.continueText),
              16.verticalSpace,
              TextButton(
                  onPressed: () {},
                  child: Text(
                    AppStrings.didntReceiveCode,
                    style: Styles.roboto700(
                        fontSize: 14, color: AppPalette.primary),
                  ))
            ],
          ).paddingHorizontal(16),
        ));
  }
}
