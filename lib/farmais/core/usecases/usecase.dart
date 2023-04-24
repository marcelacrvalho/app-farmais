import 'package:dartz/dartz.dart';

import '../entities/error_entity.dart';

abstract class UseCase<Type, Params> {
  Future<Either<ErrorEntity, Type>> call(Params params);
}

class NoParams {}
