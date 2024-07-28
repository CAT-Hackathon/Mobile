import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:met2ashara/core/utils/extensions/all_extensions.dart';
import 'package:met2ashara/core/resources/gen/locale_keys.g.dart';
import 'package:met2ashara/core/widgets/custom_button.dart';
import 'package:met2ashara/core/widgets/custom_input_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();
  final _passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomInputField.outlined(
              label: LocaleKeys.EnteryourMobile,
              controller: _phoneController,
              hint: LocaleKeys.mobile.tr(),
              keyboardType: TextInputType.phone,
              validator: Validator.validatePhoneSa,
            ),
            16.verticalSpace,
            CustomInputField.outlined(
              label: LocaleKeys.SetyourPassword,
              controller: _passController,
              hint: LocaleKeys.password.tr(),
              keyboardType: TextInputType.visiblePassword,
              validator: Validator.validatePassword,
            ),
            32.verticalSpace,
            CustomButton.filled(label: 'LOG IN', onPressed: () {})
          ],
        ).paddingHorizontal(16),
      ),
    );
  }
}
