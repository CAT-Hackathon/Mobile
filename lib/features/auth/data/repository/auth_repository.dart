import 'package:injectable/injectable.dart';

import '../../../../core/data/error/error_handler.dart';
import '../../../../core/data/remote/remote_data_source.dart';

abstract class AuthRepository {}

/// use [wrapHandlingException] from [HandlingException] to handle any exceptions that may occur during authentication.
@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl with HandlingException implements AuthRepository {
  final RemoteDataSource remoteDataSource;
  const AuthRepositoryImpl(this.remoteDataSource);
}