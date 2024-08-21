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
  SliderModel(imagePath: Assets.iconsCompanies, imageText: "hhhhhhhhhhh"),
  SliderModel(imagePath: Assets.iconsCompanies),
  SliderModel(imagePath: Assets.iconsCompanies),
  SliderModel(imagePath: Assets.iconsCompanies),
];
