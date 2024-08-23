import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:met2ashara_app/core/theme/app_pallete.dart';
import 'package:met2ashara_app/core/theme/styles.dart';

class CustomCompaniesOrMentorsWidget extends StatelessWidget {
  const CustomCompaniesOrMentorsWidget(
      {super.key, required this.txt, required this.image});
  final String txt, image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      decoration: BoxDecoration(
        color: AppPalette.lightPrimaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            txt,
            style: Styles.roboto700(fontSize: 12, color: AppPalette.black),
          ),
          Image.asset(
            image,
            fit: BoxFit.contain,
          )
        ],
      ),
    );
  }
}
