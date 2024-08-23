import 'package:flutter/material.dart';
import 'package:met2ashara_app/core/utils/extensions/widget_extensions.dart';
import 'package:met2ashara_app/core/utils/strings.dart';
import 'package:met2ashara_app/core/utils/widgets/main_app_bar.dart';
import 'package:met2ashara_app/features/home/presentation/widgets/custom_mentors_list_view.dart';

class MentorsView extends StatelessWidget {
  const MentorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(context, AppStrings.mentors, withSearch: true),
      body: const CustomMentorsListView().paddingTop(46).paddingHorizontal(16),
    );
  }
}
