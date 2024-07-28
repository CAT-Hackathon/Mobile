import 'package:injectable/injectable.dart';

import '../../../../core/data/error/error_handler.dart';
import '../../../../core/data/remote/remote_data_source.dart';

abstract class CvRepository {}

/// use [wrapHandlingException] from [HandlingException] to handle any exceptions that may occur during authentication.
@LazySingleton(as: CvRepository)
class CvRepositoryImpl with HandlingException implements CvRepository {
  final RemoteDataSource remoteDataSource;
  const CvRepositoryImpl(this.remoteDataSource);
}