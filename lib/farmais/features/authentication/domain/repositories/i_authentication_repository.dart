import 'package:dartz/dartz.dart';

import '../../../../core/entities/user_entity.dart';
import '../../../../core/errors/exceptions.dart';
import '../entities/params/authentication_params.dart';


abstract class IAuthenticationRepository {
  Future<Either<ServerException, UserEntity>> authenticate(AuthenticationParams params);
}