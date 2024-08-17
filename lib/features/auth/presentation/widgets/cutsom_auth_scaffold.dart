import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:met2ashara_app/core/theme/app_pallete.dart';
import 'package:met2ashara_app/features/auth/presentation/widgets/cutsom_gradient_circle.dart';

class CustomAuthScaffold extends StatelessWidget {
  const CustomAuthScaffold(
      {super.key, required this.widget, this.appBar = false});

  final Widget widget;
  final bool? appBar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar!
          ? AppBar(
              scrolledUnderElevation: 0,
              elevation: 0,
              leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: AppPalette.primary,
                ),
              ),
            )
          : null,
      body: Stack(
        children: [
          CustomGradientCircle(
            height: 238.h,
            width: 238.w,
            top: 80.h,
            right: -110.w,
          ),
          CustomGradientCircle(
            height: 180.h,
            width: 180.w,
            bottom: 20.h,
            left: -80.w,
          ),
          Center(child: widget)
        ],
      ),
    );
  }
}
