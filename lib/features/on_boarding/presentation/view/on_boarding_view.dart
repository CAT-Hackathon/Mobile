import 'package:flutter/material.dart';
import 'package:met2ashara_app/core/utils/extensions/widget_extensions.dart';
import 'package:met2ashara_app/features/on_boarding/presentation/widget/get_buttons.dart';
import 'package:met2ashara_app/features/on_boarding/presentation/widget/on_boarding_view_body.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            OnBoardingViewBody(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            GetButtons(currentIndex: currentIndex, controller: _controller)
                .paddingHorizontal(16)
          ],
        ),
      ),
    );
  }
}
