import 'package:injectable/injectable.dart';
import 'package:met2ashara_app/features/auth/data/models/auth_model.dart';

import '../../../../core/data/error/error_handler.dart';
import '../../../../core/data/local/local_data_source.dart';

abstract class SplashRepository {
  AuthModel? getAuthData();
}

@LazySingleton(as: SplashRepository)
class SplashRepositoryImpl with HandlingException implements SplashRepository {
  final LocalDataSource localDataSource;
  const SplashRepositoryImpl(this.localDataSource);

  @override
  AuthModel? getAuthData() => localDataSource.getAuthData();
}
