import 'package:injectable/injectable.dart';

import '../../../../core/data/error/error_handler.dart';
import '../../../../core/data/remote/remote_data_source.dart';

abstract class ProfileRepository {}

/// use [wrapHandlingException] from [HandlingException] to handle any exceptions that may occur during authentication.
@LazySingleton(as: ProfileRepository)
class ProfileRepositoryImpl with HandlingException implements ProfileRepository {
  final RemoteDataSource remoteDataSource;
  const ProfileRepositoryImpl(this.remoteDataSource);
}