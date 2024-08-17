import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:met2ashara_app/core/theme/styles.dart';
import 'package:met2ashara_app/core/utils/assets/images.dart';
import 'package:met2ashara_app/core/utils/extensions/widget_extensions.dart';
import 'package:met2ashara_app/core/utils/strings.dart';
import 'package:met2ashara_app/features/auth/presentation/sections/custom_forgot_password_form.dart';
import 'package:met2ashara_app/features/auth/presentation/widgets/cutsom_auth_scaffold.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAuthScaffold(
        appBar: true,
        widget: ListView(
          children: [
            Column(
              children: [
                SvgPicture.asset(Assets.iconsAppLogo),
                Text(
                  AppStrings.met2ashara,
                  style: Styles.quattrocento700(fontSize: 18),
                ),
                32.verticalSpace,
                CustomForgotPasswordForm(),
              ],
            ).paddingHorizontal(16),
          ],
        ));
  }
}
