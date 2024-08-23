import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:met2ashara_app/core/utils/extensions/widget_extensions.dart';
import 'package:met2ashara_app/features/home/presentation/widgets/custom_company_widget.dart';
import 'package:met2ashara_app/features/home/presentation/widgets/custom_list_view_header.dart';

class CustomTopCompanySection extends StatelessWidget {
  const CustomTopCompanySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomHeaderListView(),
        8.verticalSpace,
        SizedBox(
          height: 190.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return const CustomCompanyWidget();
            },
            separatorBuilder: (context, index) {
              return 8.horizontalSpace;
            },
          ),
        )
      ],
    ).paddingHorizontal(16);
  }
}
