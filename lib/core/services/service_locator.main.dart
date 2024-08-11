part of 'service_locator.dart';



final sl = GetIt.instance;
Future<void> initDependencies() async {
  // initAuth();


  Hive.defaultDirectory = (await getApplicationCacheDirectory()).path;
  sl.registerFactory(() => InternetConnection());
  sl.registerFactory(() => CacheHelper());
  sl<CacheHelper>().init();
  //Core

  sl.registerFactory<ConnectionChecker>(() => ConnectionCheckerImpl(sl()));
}

// void initAuth() {
//   // DataSource

//   sl
//     ..registerFactory<AuthRemoteDataSource>(
//         () => AuthRemoteDataSourceImpl(sl()))
//     ..registerFactory<UserInfoLocalDataSource>(()=> UserInfoLocalDataSourceImpl(Hive.box(name: 'user')))
//     // Repository
//     ..registerFactory<AuthRepository>(
//       () => AuthRepositoryImpl(
//         sl(),
//         sl(),
//         sl(),
//       ),
//     )

//     // UseCase
//     ..registerFactory(() => UserSignUp(sl()))
//     ..registerFactory(() => UserSignIn(sl()))
//     ..registerFactory(() => CurrentUser(sl()))
//     ..registerFactory(() => UserSignOut(sl()))

//     // Bloc
//     ..registerLazySingleton(() => GetCurrentUserBloc(
//           currentUser: sl(),
//         ))
//     ..registerLazySingleton(() => AuthBloc(
//           userSignUp: sl(),
//           userSignIn: sl(),
//           userSignOut: sl(),
//           getCurrentuserBloc: sl(),
//         ));
//}
