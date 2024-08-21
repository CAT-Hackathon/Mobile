import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:met2ashara_app/core/utils/extensions/widget_extensions.dart';
import 'package:met2ashara_app/core/utils/strings.dart';
import 'package:met2ashara_app/core/utils/widgets/custom_search_text_feild.dart';
import 'package:met2ashara_app/features/home/presentation/sections/custom_choose_companies_or_mentors.dart';
import 'package:met2ashara_app/features/home/presentation/widgets/custom_home_app_bar.dart';
import 'package:met2ashara_app/features/home/presentation/widgets/custom_home_slider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          8.verticalSpace,
          const CustomHomeAppBar(),
          const CustomSearchTextField(hintText: AppStrings.search),
          12.verticalSpace,
          const CustomHomeSlider(),
          24.verticalSpace,
          const CustomChooseCompaniesOrMentors(),
          32.verticalSpace,
        ],
      ),
    ).withSafeArea();
  }
}
