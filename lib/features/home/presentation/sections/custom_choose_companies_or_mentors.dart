import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:met2ashara_app/core/utils/assets/images.dart';
import 'package:met2ashara_app/core/utils/extensions/widget_extensions.dart';
import 'package:met2ashara_app/core/utils/strings.dart';
import 'package:met2ashara_app/features/home/presentation/widgets/custom_companies_or_mentors_widget.dart';

class CustomChooseCompaniesOrMentors extends StatelessWidget {
  const CustomChooseCompaniesOrMentors({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            child: CustomCompaniesOrMentorsWidget(
          txt: AppStrings.companies,
          image: Assets.iconsCompanies,
        )),
        8.horizontalSpace,
        const Expanded(
            child: CustomCompaniesOrMentorsWidget(
          txt: AppStrings.mentors,
          image: Assets.iconsMentors,
        )),
      ],
    ).paddingHorizontal(16);
  }
}
