import 'package:dartz/dartz.dart';
import 'package:gitali2/data/models/auth/createUserRequest.model.dart';
import 'package:gitali2/domain/repository/auth/auth.repository.dart';
import 'package:gitali2/domain/sources/auth/auth_firebase_service.dart';
import 'package:gitali2/service_locator.dart';

class AuthRepositoryImple extends AuthRepository {
  @override
  Future<void> login() {
    // TODO: implement signup
    throw UnimplementedError();
  }

  @override
  Future<Either> signup(CreateUserRequest createUserRequest) async {
    return await ServiceLocator<AuthFirebaseService>()
        .signup(createUserRequest);
  }
}
