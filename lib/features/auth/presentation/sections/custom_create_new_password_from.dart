import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:met2ashara_app/core/functions/validators.dart';
import 'package:met2ashara_app/core/utils/assets/images.dart';
import 'package:met2ashara_app/core/utils/strings.dart';
import 'package:met2ashara_app/core/utils/widgets/cutsom_button.dart';
import 'package:met2ashara_app/core/utils/widgets/cutsom_txt_form_feild.dart';

class CustomCreateNewPasswordFrom extends StatefulWidget {
  const CustomCreateNewPasswordFrom({super.key});

  @override
  State<CustomCreateNewPasswordFrom> createState() =>
      _CustomCreateNewPasswordFromState();
}

class _CustomCreateNewPasswordFromState
    extends State<CustomCreateNewPasswordFrom> {
        final _formKey = GlobalKey<FormState>();

        final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
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
                CustomButton(text: AppStrings.confirm, onPressed: () {
                  
                },)
        ],
      ),
    );
  }
}
