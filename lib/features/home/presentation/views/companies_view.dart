import 'package:flutter/material.dart';
import 'package:met2ashara_app/core/utils/extensions/widget_extensions.dart';
import 'package:met2ashara_app/core/utils/widgets/main_app_bar.dart';
import 'package:met2ashara_app/features/home/presentation/widgets/custom_company_widget.dart';

class CompaniesView extends StatelessWidget {
  const CompaniesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(context, 'Companies', withSearch: true),
      body: GridView.builder(
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 8,
          ),
          itemBuilder: (context, index) {
            return const CustomCompanyWidget();
          }).paddingTop(46).paddingHorizontal(16),
    );
  }
}
