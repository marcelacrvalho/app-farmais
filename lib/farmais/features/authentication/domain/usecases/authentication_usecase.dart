import 'package:dartz/dartz.dart';

import '../../../../core/entities/user_entity.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/params/authentication_params.dart';
import '../repositories/i_authentication_repository.dart';

class Authentication implements UseCase<UserEntity, AuthenticationParams> {
  final IAuthenticationRepository repository;

  Authentication({required this.repository});

  @override
  Future<Either<ServerException, UserEntity>> call(
      AuthenticationParams params) async {
    final response = await repository.authenticate(params);
    return response;
  }
}
