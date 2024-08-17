import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:met2ashara_app/core/functions/validators.dart';
import 'package:met2ashara_app/core/theme/styles.dart';
import 'package:met2ashara_app/core/utils/strings.dart';
import 'package:met2ashara_app/core/utils/widgets/cutsom_button.dart';
import 'package:met2ashara_app/core/utils/widgets/cutsom_txt_form_feild.dart';

class CustomForgotPasswordForm extends StatefulWidget {
  const CustomForgotPasswordForm({super.key});

  @override
  State<CustomForgotPasswordForm> createState() =>
      _CustomForgotPasswordFormState();
}

class _CustomForgotPasswordFormState extends State<CustomForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  final _mobileController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.findYourAccount,
            style: Styles.roboto600(fontSize: 22),
          ),
          16.verticalSpace,
          CustomTextFormField(
              validator: mobileValidator,
              controller: _mobileController,
              keyboardType: TextInputType.phone,
              labelText: AppStrings.enterYourMobile,
              hintText: AppStrings.enterYourMobile),
          16.verticalSpace,
          Text(
            AppStrings.youMayReceiveMobileNotification,
            style: Styles.roboto400(fontSize: 14),
            textAlign: TextAlign.center,
          ),
          32.verticalSpace,
          CustomButton(
            text: AppStrings.send,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
