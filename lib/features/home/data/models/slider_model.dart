import 'package:met2ashara_app/core/utils/assets/images.dart';

class SliderModel {
  final String imagePath;
  final String? imageText;

  SliderModel({
    required this.imagePath,
    this.imageText,
  });
}

List<SliderModel> sliderImages = [
  SliderModel(
      imagePath: Assets.imagesSlider,
      imageText:
          '"Create your CV now, take pride in your achievements, and start your professional journey!"'),
  SliderModel(imagePath: Assets.imagesSlider),
  SliderModel(imagePath: Assets.imagesSlider),
  SliderModel(imagePath: Assets.imagesSlider),
];
