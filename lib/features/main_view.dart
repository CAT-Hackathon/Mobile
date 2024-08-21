import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:met2ashara_app/core/theme/app_pallete.dart';
import 'package:met2ashara_app/core/utils/assets/images.dart';
import 'package:met2ashara_app/features/home/presentation/views/home_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _pageIndex = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final List<Widget> _pages = [
    const HomeView(),
    const Center(child: Text('Search')),
    const Center(child: Text('learning')),
    const Center(child: Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_pageIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: CurvedNavigationBar(
            key: _bottomNavigationKey,
            index: 0,
            height: 58,
            items: <Widget>[
              _pageIndex == 0
                  ? SvgPicture.asset(Assets.iconsHomeInActive)
                  : SvgPicture.asset(Assets.iconsHome),
              _pageIndex == 1
                  ? SvgPicture.asset(Assets.iconsSearchInActive)
                  : SvgPicture.asset(Assets.iconsSearch),
              _pageIndex == 2
                  ? SvgPicture.asset(Assets.iconsLearningInActive)
                  : SvgPicture.asset(Assets.iconsLearning),
              _pageIndex == 3
                  ? SvgPicture.asset(Assets.iconsProfileInActive)
                  : SvgPicture.asset(Assets.iconsProfile),
            ],
            color: AppPalette.primary,
            buttonBackgroundColor: AppPalette.primary,
            backgroundColor: AppPalette.lightBackgroundColor,
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: 600),
            onTap: (index) {
              setState(() {
                _pageIndex = index;
              });
            },
            letIndexChange: (index) => true, // Allows navigation to other pages
          ),
        ),
      ),
    );
  }
}
