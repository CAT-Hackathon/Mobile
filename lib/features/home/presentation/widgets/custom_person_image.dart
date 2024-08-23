import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:met2ashara_app/core/utils/assets/images.dart';

class CustomPersonImage extends StatelessWidget {
  const CustomPersonImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55.h,
      height: 55.w,
      decoration: ShapeDecoration(
        image: const DecorationImage(
          image: AssetImage(Assets.imagesPersonImageTest),
          fit: BoxFit.fill,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(200),
        ),
      ),
    );
  }
}
