import 'package:injectable/injectable.dart';

import '../../../../core/data/error/error_handler.dart';
import '../../../../core/data/remote/remote_data_source.dart';

abstract class InterviewRepository {}

/// use [wrapHandlingException] from [HandlingException] to handle any exceptions that may occur during authentication.
@LazySingleton(as: InterviewRepository)
class InterviewRepositoryImpl with HandlingException implements InterviewRepository {
  final RemoteDataSource remoteDataSource;
  const InterviewRepositoryImpl(this.remoteDataSource);
}