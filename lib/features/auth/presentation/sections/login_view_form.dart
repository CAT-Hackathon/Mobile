import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:met2ashara_app/core/functions/validators.dart';
import 'package:met2ashara_app/core/router/route_names.dart';
import 'package:met2ashara_app/core/theme/app_pallete.dart';
import 'package:met2ashara_app/core/theme/styles.dart';
import 'package:met2ashara_app/core/utils/assets/images.dart';
import 'package:met2ashara_app/core/utils/strings.dart';
import 'package:met2ashara_app/core/utils/widgets/cutsom_button.dart';
import 'package:met2ashara_app/core/utils/widgets/cutsom_txt_form_feild.dart';

class LoginViewForm extends StatefulWidget {
  const LoginViewForm({
    super.key,
  });

  @override
  State<LoginViewForm> createState() => _LoginViewFormState();
}

class _LoginViewFormState extends State<LoginViewForm> {
  final _formKey = GlobalKey<FormState>();
  final _mobileController = TextEditingController();
  final _passwordController = TextEditingController();
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      key: _formKey,
      child: Column(
        children: [
          SvgPicture.asset(Assets.iconsAppLogo),
          Text(
            AppStrings.met2ashara,
            style: Styles.quattrocento700(fontSize: 18),
          ),
          64.verticalSpace,
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              AppStrings.loginToYourAccount,
              style: Styles.roboto600(fontSize: 22),
            ),
          ),
          32.verticalSpace,
          CustomTextFormField(
              validator: mobileValidator,
              controller: _mobileController,
              prefixIcon: SvgPicture.asset(
                Assets.iconsPhoneIcon,
              ),
              labelText: AppStrings.enterYourMobile,
              hintText: AppStrings.mobile),
          16.verticalSpace,
          CustomTextFormField(
              validator: passwordValidator,
              controller: _passwordController,
              prefixIcon: SvgPicture.asset(
                Assets.iconsLockPasswordIcon,
              ),
              labelText: AppStrings.setYourPassword,
              hintText: AppStrings.password),
          8.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  StatefulBuilder(
                    builder: (context, setState) {
                      return Checkbox(
                        activeColor: AppPalette.primary,
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value;
                          });
                        },
                        visualDensity: const VisualDensity(
                            horizontal: -4.0, vertical: -4.0),
                      );
                    },
                  ),
                  Text(
                    AppStrings.rememberMe,
                    style: Styles.roboto400(fontSize: 12),
                  ),
                ],
              ),
              TextButton(
                  onPressed: () => AppRoutes.forgetPassword.push(),
                  child: Text(
                    AppStrings.forgetPassword,
                    style: Styles.roboto700(
                        fontSize: 14, color: AppPalette.primary),
                  ))
            ],
          ),
          32.verticalSpace,
          CustomButton(
            text: AppStrings.login,
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                print('done');
              }
            },
          ),
        ],
      ),
    );
  }
}
