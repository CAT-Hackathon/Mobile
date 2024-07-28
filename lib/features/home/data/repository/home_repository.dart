import 'package:injectable/injectable.dart';

import '../../../../core/data/error/error_handler.dart';
import '../../../../core/data/remote/remote_data_source.dart';

abstract class HomeRepository {}

/// use [wrapHandlingException] from [HandlingException] to handle any exceptions that may occur during authentication.
@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl with HandlingException implements HomeRepository {
  final RemoteDataSource remoteDataSource;
  const HomeRepositoryImpl(this.remoteDataSource);
}