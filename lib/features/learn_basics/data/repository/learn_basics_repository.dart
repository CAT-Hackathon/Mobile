import 'package:injectable/injectable.dart';

import '../../../../core/data/error/error_handler.dart';
import '../../../../core/data/remote/remote_data_source.dart';

abstract class LearnBasicsRepository {}

/// use [wrapHandlingException] from [HandlingException] to handle any exceptions that may occur during authentication.
@LazySingleton(as: LearnBasicsRepository)
class LearnBasicsRepositoryImpl with HandlingException implements LearnBasicsRepository {
  final RemoteDataSource remoteDataSource;
  const LearnBasicsRepositoryImpl(this.remoteDataSource);
}