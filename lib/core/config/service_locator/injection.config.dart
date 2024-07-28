// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../../features/auth/data/repository/auth_repository.dart' as _i221;
import '../../../features/cv/data/repository/cv_repository.dart' as _i519;
import '../../../features/home/data/repository/home_repository.dart' as _i824;
import '../../../features/interview/data/repository/interview_repository.dart'
    as _i966;
import '../../../features/learn_basics/data/repository/learn_basics_repository.dart'
    as _i804;
import '../../../features/mentors/data/repository/mentors_repository.dart'
    as _i315;
import '../../../features/profile/data/repository/profile_repository.dart'
    as _i384;
import '../../../features/search/data/repository/search_repository.dart'
    as _i16;
import '../../../features/shared/data/repository/shared_repository.dart'
    as _i655;
import '../../../features/shared/presentation/controller/connectivity_cubit/connectivity_cubit.dart'
    as _i496;
import '../../data/client/api_client.dart' as _i897;
import '../../data/client/logger_interceptor.dart' as _i891;
import '../../data/local/local_data_source.dart' as _i18;
import '../../data/remote/remote_data_source.dart' as _i803;
import 'injection.dart' as _i464;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  await gh.factoryAsync<_i460.SharedPreferences>(
    () => registerModule.pref,
    preResolve: true,
  );
  gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i558.FlutterSecureStorage>(
      () => registerModule.secureStorage);
  gh.lazySingleton<_i895.Connectivity>(() => registerModule.connectivity);
  gh.lazySingleton<_i891.LoggerInterceptor>(() => _i891.LoggerInterceptor());
  gh.lazySingleton<_i18.LocalDataSource>(() => _i18.LocalDataSourceImpl(
        gh<_i460.SharedPreferences>(),
        gh<_i558.FlutterSecureStorage>(),
      ));
  gh.factory<_i496.ConnectivityCubit>(
      () => _i496.ConnectivityCubit(connectivity: gh<_i895.Connectivity>()));
  gh.lazySingleton<_i897.ApiClient>(() => _i897.ApiClient(
        gh<_i361.Dio>(),
        loggingInterceptor: gh<_i891.LoggerInterceptor>(),
      ));
  gh.lazySingleton<_i803.RemoteDataSource>(
      () => _i803.RemoteDataSourceImpl(gh<_i897.ApiClient>()));
  gh.lazySingleton<_i384.ProfileRepository>(
      () => _i384.ProfileRepositoryImpl(gh<_i803.RemoteDataSource>()));
  gh.lazySingleton<_i315.MentorsRepository>(
      () => _i315.MentorsRepositoryImpl(gh<_i803.RemoteDataSource>()));
  gh.lazySingleton<_i519.CvRepository>(
      () => _i519.CvRepositoryImpl(gh<_i803.RemoteDataSource>()));
  gh.lazySingleton<_i804.LearnBasicsRepository>(
      () => _i804.LearnBasicsRepositoryImpl(gh<_i803.RemoteDataSource>()));
  gh.lazySingleton<_i655.SharedRepository>(
      () => _i655.SharedRepositoryImpl(gh<_i803.RemoteDataSource>()));
  gh.lazySingleton<_i221.AuthRepository>(
      () => _i221.AuthRepositoryImpl(gh<_i803.RemoteDataSource>()));
  gh.lazySingleton<_i16.SearchRepository>(
      () => _i16.SearchRepositoryImpl(gh<_i803.RemoteDataSource>()));
  gh.lazySingleton<_i966.InterviewRepository>(
      () => _i966.InterviewRepositoryImpl(gh<_i803.RemoteDataSource>()));
  gh.lazySingleton<_i824.HomeRepository>(
      () => _i824.HomeRepositoryImpl(gh<_i803.RemoteDataSource>()));
  return getIt;
}

class _$RegisterModule extends _i464.RegisterModule {}
