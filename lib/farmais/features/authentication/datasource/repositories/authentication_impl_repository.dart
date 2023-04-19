import 'package:dartz/dartz.dart';

import '../../../../core/entities/token_entity.dart';
import '../../../../core/entities/user_entity.dart';
import '../../../../core/errors/exceptions.dart';
import '../../domain/entities/params/authentication_params.dart';
import '../../domain/repositories/i_authentication_repository.dart';

class AuthenticationImplRepository implements IAuthenticationRepository {
  @override
  Future<Either<ServerException, UserEntity>> authenticate(
      AuthenticationParams params) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final user = UserEntity(
      cellphone: '3598111111',
      password: 'password',
      name: 'Mock User',
      city: 'São Paulo, São Paulo',
      street: 'Maria Leia de Figueiredo',
      neighborhood: 'Bela Vista',
      number: '144 - lado B',
      token: TokenEntity(userToken: 'token'),
    );
    return Right(user);
  }
}
