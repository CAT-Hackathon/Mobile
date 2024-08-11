import 'package:fpdart/fpdart.dart';
import 'package:met2ashara_app/core/error/failures.dart';

abstract interface class UseCase<SuccessType, Params> {
  Future<Either<Failures, SuccessType>> call(Params params);
}

class NoParams{}
