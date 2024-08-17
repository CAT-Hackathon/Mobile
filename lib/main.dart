import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:met2ashara_app/core/router/router_config.dart';
import 'package:met2ashara_app/core/theme/theme.dart';

void main() {
  runApp(const Met2asharaApp());
}

class Met2asharaApp extends StatelessWidget {
  const Met2asharaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Met2ashara',
            theme: AppTheme.lightThemeMode,
            routerConfig: RouteConfigs.routerConfig,
          );
        });
  }
}
