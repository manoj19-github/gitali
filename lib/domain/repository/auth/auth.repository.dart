import 'package:dartz/dartz.dart';
import 'package:gitali2/data/models/auth/createUserRequest.model.dart';

abstract class AuthRepository {
  Future<Either> signup(CreateUserRequest createUserRequest);
  Future<void> login();
}
