import 'package:flutter/material.dart';
import 'package:met2ashara_app/core/theme/app_pallete.dart';
import 'package:met2ashara_app/features/home/presentation/widgets/mentor_card_content_widget.dart';

class CustomMentorWidget extends StatelessWidget {
  const CustomMentorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: ShapeDecoration(
        color: AppPalette.lightBackgroundColor,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.50, color: Color(0xFF94B7E1)),
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: const MentorCardContentWidget(),
    );
  }
}

