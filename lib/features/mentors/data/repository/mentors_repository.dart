import 'package:injectable/injectable.dart';

import '../../../../core/data/error/error_handler.dart';
import '../../../../core/data/remote/remote_data_source.dart';

abstract class MentorsRepository {}

/// use [wrapHandlingException] from [HandlingException] to handle any exceptions that may occur during authentication.
@LazySingleton(as: MentorsRepository)
class MentorsRepositoryImpl with HandlingException implements MentorsRepository {
  final RemoteDataSource remoteDataSource;
  const MentorsRepositoryImpl(this.remoteDataSource);
}