import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:met2ashara_app/features/auth/presentation/widgets/cutsom_gradient_circle.dart';

class CutsomAuthScaffold extends StatelessWidget {
  const CutsomAuthScaffold({super.key, required this.widget});

  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
