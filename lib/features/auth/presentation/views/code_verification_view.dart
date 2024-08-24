import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:met2ashara_app/core/router/route_names.dart';
import 'package:met2ashara_app/core/theme/app_pallete.dart';
import 'package:met2ashara_app/core/theme/styles.dart';
import 'package:met2ashara_app/core/utils/assets/images.dart';
import 'package:met2ashara_app/core/utils/extensions/bloc_extensions.dart';
import 'package:met2ashara_app/core/utils/extensions/date_time_extensions.dart';
import 'package:met2ashara_app/core/utils/extensions/widget_extensions.dart';
import 'package:met2ashara_app/core/utils/strings.dart';
import 'package:met2ashara_app/core/utils/toaster_util.dart';
import 'package:met2ashara_app/core/utils/widgets/custom_otp_feild.dart';
import 'package:met2ashara_app/core/utils/widgets/cutsom_button.dart';
import 'package:met2ashara_app/features/auth/presentation/controller/auth_cubit/auth_cubit.dart';
import 'package:met2ashara_app/features/auth/presentation/widgets/cutsom_auth_scaffold.dart';

class CodeVerificationView extends StatefulWidget {
  const CodeVerificationView({super.key, required this.phone});
  final String phone;
  @override
  State<CodeVerificationView> createState() => _CodeVerificationViewState();
}

class _CodeVerificationViewState extends State<CodeVerificationView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _otpController = TextEditingController();
  int _timerSeconds = 60;
  bool _isTimerActive = true;

  void _startTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {
          if (_timerSeconds > 0) {
            _timerSeconds--;
          } else {
            _isTimerActive = false;
            timer.cancel();
          }
        });
      }
    });
  }

  void _restartTimer() {
    setState(() {
      _timerSeconds = 60;
      _isTimerActive = true;
    });
    _startTimer();
  }

  @override
  void initState() {
    _startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listenWhen: (previous, current) =>
          previous.verifyCodeStatus != current.verifyCodeStatus ||
          previous.resendCodeStatus != current.resendCodeStatus,
      listener: (context, state) {
        state.verifyCodeStatus.listen(
          onFailed: () {
            Toaster.showToast(state.message);
          },
          onSuccess: () {
            AppRoutes.login.pushReplacement();
          },
        );
        state.resendCodeStatus.listen(
          onFailed: () {
            Toaster.showToast(state.message);
          },
          onSuccess: () {
            _restartTimer();
          },
        );
      },
      builder: (context, state) {
        return CustomAuthScaffold(
            appBar: true,
            widget: Form(
              key: _formKey,
              child: SingleChildScrollView(
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
                    CustomOtpField(
                      controller: _otpController,
                      onCompleted: (code) {
                        _formKey.currentState!.save();
                        context.read<AuthCubit>().verifyPhone(widget.phone, code);
                      },
                      length: 4,
                    ),
                    32.verticalSpace,
                    CustomButton(
                      text: AppStrings.continueText,
                      isLoading: state.sendCodeStatus.isLoading,
                      onPressed: () {
                        _formKey.currentState!.save();
                        if (_formKey.currentState!.validate()) {
                          if (_otpController.text == "1234") {
                            AppRoutes.login.pushReplacement();
                          } else {
                            Toaster.showToast("Invalid Otp Code");
                          }
                        }
                      },
                    ),
                    16.verticalSpace,
                    TextButton(
                        onPressed: () {
                          _formKey.currentState!.save();
                          if (_formKey.currentState!.validate()) {
                            if (_otpController.text == state.verificationCode) {
                              AppRoutes.login.pushReplacement();
                            } else {
                              Toaster.showToast("Invalid Otp Code");
                            }
                          }
                        },
                        child: GestureDetector(
                          onTap: () {
                            if (!_isTimerActive) {
                              context.read<AuthCubit>().resendCode();
                            }
                          },
                          child: state.resendCodeStatus.isLoading
                              ? const CupertinoActivityIndicator()
                                  .paddingHorizontal(8)
                              : Text(
                                  _isTimerActive
                                      ? Duration(seconds: _timerSeconds)
                                          .formatDuration
                                      : AppStrings.didntReceiveCode,
                                  style: Styles.roboto700(
                                      fontSize: 14, color: AppPalette.primary),
                                ),
                        ))
                  ],
                ).paddingHorizontal(16),
              ),
            ));
      },
    );
  }
}
