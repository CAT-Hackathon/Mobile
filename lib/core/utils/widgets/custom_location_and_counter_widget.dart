import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:met2ashara_app/core/theme/styles.dart';

class CustomLocationAndCounterWidget extends StatelessWidget {
  const CustomLocationAndCounterWidget({
    super.key,
    required this.image,
    required this.location,
    required this.count,
  });
  final String image, location, count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          location,
          style: Styles.roboto400(fontSize: 8),
        ),
        Row(
          children: [
            Text(
              count,
              style: Styles.roboto400(fontSize: 8),
            ),
            4.horizontalSpace,
            SvgPicture.asset(image)
          ],
        ),
      ],
    );
  }
}
