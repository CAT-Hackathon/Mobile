import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:met2ashara_app/core/theme/app_pallete.dart';
import 'package:met2ashara_app/core/theme/styles.dart';
import 'package:met2ashara_app/core/utils/strings.dart';

class CustomHeaderListView extends StatelessWidget {
  const CustomHeaderListView({
    super.key,
    this.isCompany = true,
  });

  final bool? isCompany;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          isCompany! ? AppStrings.topCompany : AppStrings.topMentor,
          style: Styles.roboto500(fontSize: 16),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              'View All',
              style: Styles.roboto400(fontSize: 12, color: AppPalette.primary),
            )),
      ],
    );
  }
}
