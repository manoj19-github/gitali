import 'package:get_it/get_it.dart';
import 'package:gitali2/data/repository/auth.repository.imple.dart';
import 'package:gitali2/domain/repository/auth/auth.repository.dart';
import 'package:gitali2/domain/sources/auth/auth_firebase_service.dart';
import 'package:gitali2/domain/usecases/auth/signup.usecases.dart';

final ServiceLocator = GetIt.instance;

Future<void> initializeDependencies() async {
  ServiceLocator.registerSingleton<AuthFirebaseService>(
      AuthFirebaseServiceImpl());

  ServiceLocator.registerSingleton<AuthRepository>(AuthRepositoryImple());

  ServiceLocator.registerSingleton<SignUpUseCases>(SignUpUseCases());
}
