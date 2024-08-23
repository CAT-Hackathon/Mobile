import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:met2ashara_app/core/router/route_names.dart';
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
        Expanded(
            child: GestureDetector(
          onTap: () {
            AppRoutes.companiesView.push();
          },
          child: const CustomCompaniesOrMentorsWidget(
            txt: AppStrings.companies,
            image: Assets.imagesCompanyImage,
          ),
        )),
        8.horizontalSpace,
        Expanded(
            child: GestureDetector(
          onTap: () {
            AppRoutes.mentorsView.push();
          },
          child: const CustomCompaniesOrMentorsWidget(
            txt: AppStrings.mentors,
            image: Assets.imagesMentorImage,
          ),
        )),
      ],
    ).paddingHorizontal(16);
  }
}
