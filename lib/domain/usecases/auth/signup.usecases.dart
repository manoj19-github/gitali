import 'package:dartz/dartz.dart';
import 'package:gitali2/core/usecase/useCase.dart';
import 'package:gitali2/data/models/auth/createUserRequest.model.dart';
import 'package:gitali2/domain/repository/auth/auth.repository.dart';
import 'package:gitali2/service_locator.dart';

class SignUpUseCases implements UseCase<Either, CreateUserRequest> {
  @override
  Future<Either> call({CreateUserRequest? params}) {
    return ServiceLocator<AuthRepository>().signup(params!);
  }
}
