import 'package:injectable/injectable.dart';

import '../../../../core/data/error/error_handler.dart';
import '../../../../core/data/remote/remote_data_source.dart';

abstract class SearchRepository {}

/// use [wrapHandlingException] from [HandlingException] to handle any exceptions that may occur during authentication.
@LazySingleton(as: SearchRepository)
class SearchRepositoryImpl with HandlingException implements SearchRepository {
  final RemoteDataSource remoteDataSource;
  const SearchRepositoryImpl(this.remoteDataSource);
}