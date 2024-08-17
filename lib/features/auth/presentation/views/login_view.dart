import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:met2ashara_app/core/router/route_names.dart';
import 'package:met2ashara_app/core/utils/extensions/widget_extensions.dart';
import 'package:met2ashara_app/core/utils/strings.dart';
import 'package:met2ashara_app/features/auth/presentation/sections/another_join_us_section.dart';
import 'package:met2ashara_app/features/auth/presentation/sections/login_view_form.dart';
import 'package:met2ashara_app/features/auth/presentation/widgets/cutsom_auth_scaffold.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return CutsomAuthScaffold(
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const LoginViewForm(),
          32.verticalSpace,
          AnotherJoinUsSection(
            anotherMethode: AppStrings.orSignupWith,
            joinMethodTxt: AppStrings.signup,
            dontOrAlreadyTxt: AppStrings.dontHaveAnAccount,
            onJoinMethodTap: () => AppRoutes.signUp.push(),
          ),
        ],
      ).paddingHorizontal(16),
    );
  }
}
