import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:met2ashara_app/core/utils/extensions/widget_extensions.dart';
import 'package:met2ashara_app/core/utils/strings.dart';
import 'package:met2ashara_app/features/auth/presentation/sections/another_join_us_section.dart';
import 'package:met2ashara_app/features/auth/presentation/sections/sign_up_view_form.dart';
import 'package:met2ashara_app/features/auth/presentation/widgets/cutsom_auth_scaffold.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAuthScaffold(
      appBar: true,
      widget: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SignUpViewForm(),
            32.verticalSpace,
            AnotherJoinUsSection(
              anotherMethode: AppStrings.orLoginWith,
              joinMethodTxt: AppStrings.login,
              dontOrAlreadyTxt: AppStrings.alreadyHaveAnAccount,
              onJoinMethodTap: () => Navigator.pop(context),
            ),
          ],
        ).paddingHorizontal(16),
      ),
    );
  }
}
