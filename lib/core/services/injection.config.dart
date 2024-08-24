// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../features/auth/data/datasources/auth_remote_datasource.dart'
    as _i161;
import '../../features/auth/data/repository_impl/auth_repository_impl.dart'
    as _i954;
import '../../features/auth/domain/repository/auth_repository.dart' as _i961;
import '../../features/auth/presentation/controller/auth_cubit/auth_cubit.dart'
    as _i20;
import '../../features/shared/controller/connectivity_cubit/connectivity_cubit.dart'
    as _i1020;
import '../../features/splash/data/repository/splash_repository.dart' as _i478;
import '../../features/splash/presentation/controller/splash_cubit.dart'
    as _i412;
import '../cache/cache_helper.dart' as _i144;
import '../data/client/api_client.dart' as _i340;
import '../data/client/logger_interceptor.dart' as _i397;
import '../data/local/local_data_source.dart' as _i738;
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
  gh.lazySingleton<_i144.CacheHelper>(() => _i144.CacheHelper());
  gh.lazySingleton<_i397.LoggerInterceptor>(() => _i397.LoggerInterceptor());
  gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i895.Connectivity>(() => registerModule.connectivity);
  gh.lazySingleton<_i340.ApiClient>(() => _i340.ApiClient(
        gh<_i361.Dio>(),
        loggingInterceptor: gh<_i397.LoggerInterceptor>(),
      ));
  gh.lazySingleton<_i738.LocalDataSource>(
      () => _i738.LocalDataSourceImpl(gh<_i460.SharedPreferences>()));
  gh.lazySingleton<_i478.SplashRepository>(
      () => _i478.SplashRepositoryImpl(gh<_i738.LocalDataSource>()));
  gh.factory<_i1020.ConnectivityCubit>(
      () => _i1020.ConnectivityCubit(connectivity: gh<_i895.Connectivity>()));
  gh.lazySingleton<_i161.AuthRemoteDatasource>(
      () => _i161.AuthRemoteDataSourceImpl(gh<_i340.ApiClient>()));
  gh.factory<_i412.SplashCubit>(
      () => _i412.SplashCubit(gh<_i478.SplashRepository>()));
  gh.lazySingleton<_i961.AuthRepository>(
      () => _i954.AuthRepositoryImpl(gh<_i161.AuthRemoteDatasource>()));
  gh.lazySingleton<_i20.AuthCubit>(
      () => _i20.AuthCubit(gh<_i961.AuthRepository>()));
  return getIt;
}

class _$RegisterModule extends _i464.RegisterModule {}
