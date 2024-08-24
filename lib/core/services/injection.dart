import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:met2ashara_app/core/services/injection.config.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

@InjectableInit(
    initializerName: r'$initGetIt',
    preferRelativeImports: true,
    asExtension: false)
Future<GetIt> configureInjection() async => $initGetIt(sl);

@module
abstract class RegisterModule {
  @lazySingleton
  Dio get dio => Dio();
  @preResolve
  Future<SharedPreferences> get pref => SharedPreferences.getInstance();
  @lazySingleton
  Connectivity get connectivity => Connectivity();
}
