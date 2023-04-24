import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../../../resources/values/strings.dart';
import '../../../../core/entities/user_entity.dart';
import '../../../../core/error/exception.dart';
import '../models/user_model.dart';

abstract class IAuthenticationRemoteDatasource {
  Future<UserModel> createUser(UserEntity user);
}

class AuthenticationRemoteDatasourceImpl
    implements IAuthenticationRemoteDatasource {
  final uri = Uri.https(stringBaseUrl, stringAuthenticationEndpoint);
  final http.Client client;

  AuthenticationRemoteDatasourceImpl({required this.client});

  @override
  Future<UserModel> createUser(UserEntity user) async {
    try {
      final response = await http.post(
        uri,
        headers: stringHeaders,
        body: jsonEncode(<String, String>{
          'name': user.name,
          'password': user.password,
          'city': user.city,
          'street': user.street,
          'neighborhood': user.neighborhood,
          'number': user.number
        }),
      );
      if (response.statusCode == 201) {
        return UserModel.fromJson(json.decode(response.body));
      } else {
        throw ServerException(
            message: 'Status code error + ${response.statusCode}');
      }
    } catch (e) {
      throw ServerException(
          message: 'Error when create authentication + ${e.toString()}');
    }
  }
}
