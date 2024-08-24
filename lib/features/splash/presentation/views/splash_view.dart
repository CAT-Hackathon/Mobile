import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:met2ashara_app/core/router/route_names.dart';
import 'package:met2ashara_app/core/theme/app_pallete.dart';
import 'package:met2ashara_app/core/utils/assets/images.dart';
import 'package:met2ashara_app/core/utils/extensions/bloc_extensions.dart';
import 'package:met2ashara_app/features/auth/presentation/controller/auth_cubit/auth_cubit.dart';
import 'package:met2ashara_app/features/splash/presentation/controller/splash_cubit.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) => state.status.listen(
          onLoading: () => _controller.forward(),
          onSuccess: () {
            _controller.reverse();
            context.read<AuthCubit>().updateUserData(state.authModel);
            if (state.authModel.accessToken.isEmpty) {
              Future.delayed(const Duration(milliseconds: 500), () => AppRoutes.login.go());
            } else {
              Future.delayed(const Duration(milliseconds: 500), () => AppRoutes.mainView.go());
            }
          },
          onFailed: () {
          }),
      child: Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppPalette.gradient1, AppPalette.gradient2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
          child: SvgPicture.asset(
        Assets.iconsAppLogo,
        height: 245.h,
      )),
    ).animate(controller: _controller).fadeIn(),
      ),
    );
  }
}




