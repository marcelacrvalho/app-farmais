import 'package:dartz/dartz.dart';

import '../errors/exceptions.dart';

abstract class UseCase<Type, Params> {
  Future<Either<ServerException, Type>> call(Params params);
}

class NoParams {}