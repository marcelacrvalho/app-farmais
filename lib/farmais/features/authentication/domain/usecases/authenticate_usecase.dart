import 'package:dartz/dartz.dart';

import '../../../../core/entities/error_entity.dart';
import '../../../../core/entities/user_entity.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/params/authentication_params.dart';
import '../repositories/i_authentication_repository.dart';

class AuthenticateUser implements UseCase<UserEntity, AuthenticationParams> {
  final IAuthenticationRepository repository;

  AuthenticateUser({required this.repository});

  @override
  Future<Either<ErrorEntity, UserEntity>> call(
      AuthenticationParams params) async {
    return await repository.authenticate(params.user);
  }
}
