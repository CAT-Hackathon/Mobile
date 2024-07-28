import 'package:flutter/material.dart';
import 'package:met2ashara/core/utils/extensions/all_extensions.dart';

class CustomBackgroundCircle extends StatelessWidget {
  const CustomBackgroundCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar()
        .circle()
        .withShaderMask([const Color(0xff3893FF), Colors.white]);
  }
}
