import 'package:met2ashara_app/core/router/router_config.dart';

class AppRoutes extends AppRoute {
  AppRoutes(super.name, super.path);

  // App routes
  static const splash = AppRoute('splash', '/');
  static const onBoarding = AppRoute('onBoarding', '/onBoarding');

  // Auth routes
  static const login = AppRoute('login', '/login');
  static const signUp = AppRoute('signUp', '/signUp');
  static const verification = AppRoute('verification', '/verification');

  // forget password routes
  static const forgetPassword = AppRoute('forgetPassword', '/forget-password');

  // bottomNavBar
  static const bottomNavBar = AppRoute('bottomNavBar', '/bottomNavBar');
}

class AppRoute {
  final String name;
  final String path;

  const AppRoute(this.name, this.path);

  /// Pushes the route with the given name onto the navigator.
  Future<T?> push<T extends Object?>({
    Object? extra,
    Map<String, String> params = const <String, String>{},
    Map<String, dynamic> queries = const <String, dynamic>{},
  }) {
    return RouteConfigs.routerConfig.pushNamed(name,
        extra: extra, queryParameters: queries, pathParameters: params);
  }

  /// Pushes a new route onto the navigator, and replaces the current route with the new route.
  void pushReplacement<T extends Object?>({
    Object? extra,
    Map<String, String> params = const <String, String>{},
    Map<String, dynamic> queries = const <String, dynamic>{},
  }) {
    RouteConfigs.routerConfig.pushReplacementNamed(
      name,
      extra: extra,
      queryParameters: queries,
      pathParameters: params,
    );
  }

  /// Navigates to the specified route.
  void go<T extends Object?>({
    Object? extra,
    Map<String, String> params = const <String, String>{},
    Map<String, dynamic> queries = const <String, dynamic>{},
  }) {
    return RouteConfigs.routerConfig.goNamed(name,
        extra: extra, queryParameters: queries, pathParameters: params);
  }

  void pop<T extends Object?>() {
    return RouteConfigs.routerConfig.pop();
  }
}
