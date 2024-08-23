import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:met2ashara_app/core/theme/app_pallete.dart';
import 'package:met2ashara_app/core/theme/styles.dart';
import 'package:met2ashara_app/core/utils/assets/images.dart';
import 'package:met2ashara_app/core/utils/widgets/custom_location_and_counter_widget.dart';

class CustomCompanyWidget extends StatelessWidget {
  const CustomCompanyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 144.w,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: AppPalette.gradient2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Align(
                alignment: Alignment.center,
                child: Image.asset(Assets.imagesCompanyImageTest)),
          ),
          Text(
            "ROQAY",
            style: Styles.roboto400(fontSize: 12, color: AppPalette.primary),
          ),
          Text(
            "software development",
            style: Styles.roboto400(fontSize: 10, color: AppPalette.black),
          ),
          8.verticalSpace,
          const CustomLocationAndCounterWidget(
            image: Assets.iconsCompanyPerson,
            location: 'Cairo',
            count: '200',
          ),
        ],
      ),
    );
  }
}
