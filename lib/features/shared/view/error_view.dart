import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:met2ashara_app/core/resources/dimentions_manager.dart';
import 'package:met2ashara_app/core/theme/styles.dart';
import 'package:met2ashara_app/core/utils/assets/images.dart';
import 'package:met2ashara_app/core/utils/extensions/context_extensions.dart';
import 'package:met2ashara_app/core/utils/extensions/widget_extensions.dart';
import 'package:met2ashara_app/core/utils/widgets/cutsom_button.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({
    super.key,
    this.svgPath,
    this.title,
    this.message,
    this.enableBack = false,
    this.onRetry,
  });
  final bool enableBack;
  final String? svgPath;
  final String? title;
  final String? message;
  final void Function()? onRetry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: context.statusBarHeight + AppSize.s6.h,
            left: AppSize.screenPadding,
            right: AppSize.screenPadding,
            child: const Icon(Icons.arrow_back_ios),
          ).buildWhen(enableBack),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(svgPath ?? Assets.iconsWarning),
              AppSize.s24.verticalSpace,
              Text(
                message ?? "Bo Internet Connection",
                textAlign: TextAlign.center,
                style: Styles.roboto500(fontSize: 18),
              ),
              AppSize.s45.verticalSpace,
              if (onRetry != null)
                CustomButton(onPressed: onRetry!, text: 'Retry'),
            ],
          ).paddingHorizontal(AppSize.s55.w).center(),
        ],
      ),
    );
  }
}
