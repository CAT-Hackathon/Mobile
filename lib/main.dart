import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:met2ashara_app/core/bloc_observer/app_bloc_observer.dart';
import 'package:met2ashara_app/core/router/router_config.dart';
import 'package:met2ashara_app/core/services/injection.dart';
import 'package:met2ashara_app/core/theme/theme.dart';
import 'package:met2ashara_app/features/auth/presentation/controller/auth_cubit/auth_cubit.dart';
import 'package:met2ashara_app/features/splash/presentation/controller/splash_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  Future.wait([
    ScreenUtil.ensureScreenSize(),
    configureInjection(),
  ]);
  runApp(const Met2asharaApp());
}

class Met2asharaApp extends StatelessWidget {
  const Met2asharaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MultiBlocProvider(
            providers:[
            BlocProvider(create: (context) => sl<AuthCubit>(),),
            BlocProvider(create: (context) => sl<SplashCubit>(),),
            ] ,
            child: MaterialApp.router(
              builder: BotToastInit(),
              debugShowCheckedModeBanner: false,
              title: 'Met2ashara',
              theme: AppTheme.lightThemeMode,
              routerConfig: RouteConfigs.routerConfig,
            ),
          );
        });
  }
}
