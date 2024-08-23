import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:met2ashara_app/features/home/presentation/widgets/custom_mentor_widget.dart';

class CustomMentorsListView extends StatelessWidget {
  const CustomMentorsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) {
        return const CustomMentorWidget();
      },
      separatorBuilder: (context, index) {
        return 16.verticalSpace;
      },
    );
  }
}