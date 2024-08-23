import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:met2ashara_app/features/home/data/models/slider_model.dart';
import 'package:met2ashara_app/features/home/presentation/widgets/slider_widget.dart';

class CustomHomeSlider extends StatefulWidget {
  const CustomHomeSlider({
    super.key,
  });

  @override
  State<CustomHomeSlider> createState() => _CustomHomeSliderState();
}

class _CustomHomeSliderState extends State<CustomHomeSlider> {
  int activeIndex = 0;
  final controller = CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      carouselController: controller,
      itemCount: sliderImages.length,
      itemBuilder: (context, index, realIndex) {
        return sliderWidget(index);
      },
      options: CarouselOptions(
        viewportFraction: 0.8,
        initialPage: 0,
        height: 112.h,
        autoPlayInterval: const Duration(seconds: 2),
        onPageChanged: (index, reason) {
          setState(() {
            activeIndex = index;
          });
        },
      ),
    );
  }

  void next() {
    controller.nextPage(duration: const Duration(milliseconds: 500));
  }

  void previous() {
    controller.previousPage(duration: const Duration(milliseconds: 500));
  }
}
