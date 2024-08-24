import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:met2ashara_app/core/theme/app_pallete.dart';
import 'package:met2ashara_app/core/theme/styles.dart';
import 'package:met2ashara_app/core/utils/assets/images.dart';
import 'package:met2ashara_app/core/utils/widgets/custom_image.dart';
import 'package:met2ashara_app/core/utils/widgets/custom_location_and_counter_widget.dart';
import 'package:met2ashara_app/features/home/data/models/company_model.dart';

class CustomCompanyWidget extends StatelessWidget {
  const CustomCompanyWidget({
    super.key, required this.company,
  });

  final Company company;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
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
                  child: CustomImage(height: 100, imageUrl: company.logo)),
            ),
            Text(
              company.name,
              style: Styles.roboto400(fontSize: 12, color: AppPalette.primary),
            ),
            Text(
              company.industry,
              style: Styles.roboto400(fontSize: 10, color: AppPalette.black),
            ),
            8.verticalSpace,
            CustomLocationAndCounterWidget(
              image: Assets.iconsCompanyPerson,
              location: company.address,
              count: '200',
            ),
          ],
        ),
      ),
    );
  }
}
