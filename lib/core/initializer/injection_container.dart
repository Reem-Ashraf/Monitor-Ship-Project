import 'package:get_it/get_it.dart';

import '../../presentation/screens/auth_screens/login_screen/data/repositories/authentication_repository.dart';
import '../../presentation/screens/auth_screens/login_screen/domain/repositories/authentication_repository.dart';
import '../../presentation/screens/auth_screens/login_screen/domain/usecases/login_usecase.dart';
import '../../presentation/screens/auth_screens/login_screen/presentation/cubit/auth_cubit.dart';

final getIt = GetIt.instance;

void setupDependencyInjector() {
  getIt.registerLazySingleton<AuthenticationRepositoryBase>(
      AuthenticationRepository.new);

  getIt.registerLazySingleton(
      () => LoginUseCase(getIt<AuthenticationRepositoryBase>()));

  getIt.registerFactory<AuthCubit>(
    () => AuthCubit(getIt<LoginUseCase>()),
  );
}
