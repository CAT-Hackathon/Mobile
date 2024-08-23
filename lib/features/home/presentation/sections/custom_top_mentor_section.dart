import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:met2ashara_app/core/utils/extensions/widget_extensions.dart';
import 'package:met2ashara_app/features/home/presentation/widgets/custom_list_view_header.dart';
import 'package:met2ashara_app/features/home/presentation/widgets/custom_mentors_list_view.dart';

class CustomTopMentorSection extends StatelessWidget {
  const CustomTopMentorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomHeaderListView(
          isCompany: false,
        ),
        8.verticalSpace,
        const CustomMentorsListView()
      ],
    ).paddingHorizontal(16);
  }
}


