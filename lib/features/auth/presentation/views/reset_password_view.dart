import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:met2ashara_app/core/theme/styles.dart';
import 'package:met2ashara_app/core/utils/extensions/widget_extensions.dart';
import 'package:met2ashara_app/core/utils/strings.dart';
import 'package:met2ashara_app/features/auth/presentation/sections/custom_create_new_password_from.dart';
import 'package:met2ashara_app/features/auth/presentation/widgets/cutsom_auth_scaffold.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAuthScaffold(
        widget: Column(
      children: [
        64.verticalSpace,
        Text(
          AppStrings.createNewPassword,
          style: Styles.roboto600(fontSize: 22),
        ),
        16.verticalSpace,
        Text(
          AppStrings.createNewPasswordRoles,
          style: Styles.roboto400(fontSize: 12),
          textAlign: TextAlign.center,
        ),
        24.verticalSpace,
        const CustomCreateNewPasswordFrom(),
      ],
    ).paddingHorizontal(16));
  }
}
