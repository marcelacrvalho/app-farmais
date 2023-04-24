import 'package:dartz/dartz.dart';

import '../../../../core/entities/error_entity.dart';
import '../../../../core/entities/user_entity.dart';
import '../../domain/repositories/i_authentication_repository.dart';
import '../datasource/authentication_remote_datasource.dart';

class AuthenticationRepositoryImpl implements IAuthenticationRepository {
  final IAuthenticationRemoteDatasource datasource;

  AuthenticationRepositoryImpl({required this.datasource});

  @override
  Future<Either<ErrorEntity, UserEntity>> authenticate(UserEntity user) async {
    final userReceived = await datasource.createUser(user);
    return Right(userReceived);
  }
}
