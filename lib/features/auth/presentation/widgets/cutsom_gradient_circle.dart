import 'package:flutter/material.dart';

class CustomGradientCircle extends StatelessWidget {
  const CustomGradientCircle({
    super.key,
    this.top,
    this.right,
    this.bottom,
    this.left,
    this.height,
    this.width,
  });
  final double? top, right, bottom, left, height, width;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      right: right,
      bottom: bottom,
      left: left,
      child: Container(
        width: height,
        height: width,
        decoration: const ShapeDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF3893FF), Color(0x00829CCC)],
          ),
          shape: OvalBorder(),
        ),
      ),
    );
  }
}
