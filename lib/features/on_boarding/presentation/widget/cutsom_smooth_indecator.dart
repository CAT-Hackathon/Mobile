import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:met2ashara_app/core/theme/app_pallete.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPageIndecator extends StatelessWidget {
  const CustomSmoothPageIndecator({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
        controller: controller,
        count: 3,
        effect: ExpandingDotsEffect(
            dotColor: AppPallete.greyColor,
            activeDotColor: AppPallete.primary,
            dotWidth: 16.w,
            dotHeight: 8.h));
  }
}
