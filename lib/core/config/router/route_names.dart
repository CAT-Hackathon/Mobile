import 'package:met2ashara/core/config/router/router_config.dart';

/// A class that defines the route names for the application.
///
/// - [name] is the name of the route.
/// - [path] is the path of the route.
///
/// Example usage:
/// ```dart
/// AppRoutes.home.push(context);
/// ```
class AppRoutes extends AppRoute {
  AppRoutes(super.name, super.path);

  // App routes
  static const splash = AppRoute('splash', '/');
  static const login = AppRoute('login', '/login');
  static const signUp = AppRoute('signUp', '/signUp');
  static const findAccount = AppRoute('findAccount', '/findAccount');
  static const codeVerification = AppRoute('codeVerification', '/codeVerification');
  static const createNewPassword = AppRoute('createNewPassword', '/createNewPassword');
}

class AppRoute {
  final String name;
  final String path;

  const AppRoute(this.name, this.path);

  /// Pushes the route with the given name onto the navigator.
  Future<T?> push<T extends Object?>(
    {
    Object? extra,
    Map<String, String> params = const <String, String>{},
    Map<String, dynamic> queries = const <String, dynamic>{},
  }) {
    return RouteConfigs.routerConfig.pushNamed(name, extra: extra, queryParameters: queries, pathParameters: params);
  }

  /// Pushes a new route onto the navigator, and replaces the current route with the new route.
  void pushReplacement<T extends Object?>(
    {
    Object? extra,
    Map<String, String> params = const <String, String>{},
    Map<String, dynamic> queries = const <String, dynamic>{},
  }) {
    RouteConfigs.routerConfig.pushReplacementNamed(name, extra: extra, queryParameters: queries, pathParameters: params);
  }

  /// Navigates to the specified route.
  void go<T extends Object?>(
    {
    Object? extra,
    Map<String, String> params = const <String, String>{},
    Map<String, dynamic> queries = const <String, dynamic>{},
  }) {
    return RouteConfigs.routerConfig.goNamed(name, extra: extra, queryParameters: queries, pathParameters: params);
  }
}
