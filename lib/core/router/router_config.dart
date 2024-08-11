import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:met2ashara_app/core/router/page_transition.dart';
import 'package:met2ashara_app/core/utils/extensions/widget_extensions.dart';
import 'package:met2ashara_app/features/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:met2ashara_app/features/splash/presentation/views/splash_view.dart';


import 'route_names.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

class RouteConfigs {
  // All Routes in the app
  static final GoRouter routerConfig = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: rootNavigatorKey,
    routes: [
      GoRoute(
        path: AppRoutes.splash.path,
        name: AppRoutes.splash.name,
        pageBuilder: (context, state) => const SplashView().buildPage(),
      ),
      GoRoute(
        path: AppRoutes.onBoarding.path,
        name: AppRoutes.onBoarding.name,
        pageBuilder: (context, state) => const OnBoardingView().buildPage(transition: PageTransitions.slide),
      ),
    ],
  );
}
