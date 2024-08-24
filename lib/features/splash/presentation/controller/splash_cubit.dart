import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:met2ashara_app/features/auth/data/models/auth_model.dart';

import '../../../../core/resources/cubit_status.dart';
import '../../data/repository/splash_repository.dart';

part 'splash_state.dart';

@injectable
class SplashCubit extends Cubit<SplashState> {
  final SplashRepository _repository;
  SplashCubit(this._repository) : super(const SplashState()) {
    _getData();
  }

  void _getData() async {
    emit(state.copyWith(status: CubitStatus.loading));
    final authModel = _repository.getAuthData();
    log(authModel!.user.phone);
    emit(state.copyWith(authModel: authModel, status: CubitStatus.success));
  }
}
