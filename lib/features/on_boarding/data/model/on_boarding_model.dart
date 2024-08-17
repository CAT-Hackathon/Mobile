import 'package:flutter/material.dart';
import 'package:met2ashara_app/core/utils/assets/images.dart';
import 'package:met2ashara_app/features/on_boarding/presentation/widget/cutsom_onboarding1_paint.dart';

class OnBoardingModel {
  final String imagePath;
  final String title;
  final CustomPainter painter;
  OnBoardingModel({
    required this.imagePath,
    required this.title,
    required this.painter,
  });
}

List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
    imagePath: Assets.iconsOnBoarding1,
    title:
        "Start your coding journey with our app, designed to teach you programming basics step by step in an easy and enjoyable way!",
    painter: CustomPainter1(),
  ),
  OnBoardingModel(
    imagePath: Assets.iconsOnBoarding2,
    title:
        "Our intuitive CV builder will help you craft a professional resume in no time. Simply input your details, and we'll handle the rest.",
    painter: CustomPainter1(),
  ),
  OnBoardingModel(
    imagePath: Assets.iconsOnBoarding3,
    title:
        "Connect with experienced mentors for guidance on resume building and interview techniques throughout your job application process",
    painter: CustomPainter1(),
  ),
];
