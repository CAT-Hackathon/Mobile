import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:met2ashara_app/core/theme/app_pallete.dart';
import 'package:met2ashara_app/core/utils/extensions/widget_extensions.dart';
import 'package:met2ashara_app/features/on_boarding/data/model/on_boarding_model.dart';
import 'package:met2ashara_app/features/on_boarding/presentation/widget/cutsom_smooth_indecator.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody(
      {super.key, required this.controller, this.onPageChanged});

  final PageController controller;
  final void Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .8,
      child: PageView.builder(
          onPageChanged: onPageChanged,
          physics: const BouncingScrollPhysics(),
          controller: controller,
          itemCount: onBoardingData.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    CustomPaint(
                      painter: onBoardingData[index].painter,
                      child: Center(
                          child: SvgPicture.asset(onBoardingData[index].imagePath)),
                    ),
                    index == 0
                        ? const SizedBox()
                        : Positioned(
                            child: IconButton(
                                onPressed: () {
                                  controller.jumpToPage(index - 1);
                                },
                                icon: const Icon(
                                  Icons.arrow_back_ios_new,
                                  color: AppPalette.whiteColor,
                                )))
                  ],
                ),
                SizedBox(
                  height: 170.h,
                ),
                CustomSmoothPageIndecator(
                  controller: controller,
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  onBoardingData[index].title,
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ).paddingHorizontal(16),
              ],
            );
          }),
    );
  }
}
