import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:met2ashara/features/auth/presentation/view/screens/login_view.dart';
import 'package:met2ashara/features/splash/presentation/screen/splash_view.dart';

import '../../utils/extensions/widget_extensions.dart';
import 'route_names.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

class RouteConfigs {
  // All Routes in the app
  static final GoRouter routerConfig = GoRouter(
    initialLocation: AppRoutes.splash.path,
    debugLogDiagnostics: true,
    navigatorKey: rootNavigatorKey,
    observers: [BotToastNavigatorObserver()],
    routes: [
      GoRoute(
        path: AppRoutes.splash.path,
        name: AppRoutes.splash.name,
        pageBuilder: (context, state) => const SplashView().buildPage(),
      ),
      GoRoute(
        path: AppRoutes.login.path,
        name: AppRoutes.login.name,
        pageBuilder: (context, state) => const LoginView().buildPage()
      ),
    ],
  );
}
