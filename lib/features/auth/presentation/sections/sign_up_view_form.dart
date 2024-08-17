import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:met2ashara_app/core/functions/validators.dart';
import 'package:met2ashara_app/core/theme/styles.dart';
import 'package:met2ashara_app/core/utils/assets/images.dart';
import 'package:met2ashara_app/core/utils/strings.dart';
import 'package:met2ashara_app/core/utils/widgets/cutsom_button.dart';
import 'package:met2ashara_app/core/utils/widgets/cutsom_txt_form_feild.dart';

class SignUpViewForm extends StatefulWidget {
  const SignUpViewForm({
    super.key,
  });

  @override
  State<SignUpViewForm> createState() => _SignUpViewFormState();
}

class _SignUpViewFormState extends State<SignUpViewForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _mobileController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
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
              AppStrings.createNewAccount,
              style: Styles.roboto600(fontSize: 22),
            ),
          ),
          32.verticalSpace,
          CustomTextFormField(
              controller: _nameController,
              prefixIcon: SvgPicture.asset(
                Assets.iconsPerson,
              ),
              labelText: AppStrings.enterYourName,
              hintText: AppStrings.name),
          16.verticalSpace,
          CustomTextFormField(
              controller: _mobileController,
              validator: mobileValidator,
              prefixIcon: SvgPicture.asset(
                Assets.iconsPhoneIcon,
              ),
              labelText: AppStrings.enterYourMobile,
              hintText: AppStrings.mobile),
          16.verticalSpace,
          CustomTextFormField(
              controller: _passwordController,
              onChanged: (value) {
                setState(() {
                  _passwordController.text = value;
                });
              },
              validator: passwordValidator,
              prefixIcon: SvgPicture.asset(
                Assets.iconsLockPasswordIcon,
              ),
              labelText: AppStrings.newPassword,
              hintText: AppStrings.newPassword),
          16.verticalSpace,
          CustomTextFormField(
              controller: _confirmPasswordController,
              validator: (value) =>
                  confirmPasswordValidator(value, _passwordController.text),
              prefixIcon: SvgPicture.asset(
                Assets.iconsLockPasswordIcon,
              ),
              labelText: AppStrings.confirmNewPassword,
              hintText: AppStrings.confirmNewPassword),
          32.verticalSpace,
          CustomButton(
            text: AppStrings.signup,
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
