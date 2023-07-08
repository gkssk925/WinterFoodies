import 'package:get_it/get_it.dart';
import 'package:winter_foodies/data/data_sources/login/get_token_api.dart';
import 'package:winter_foodies/data/repositories/login_repository_impl.dart';
import 'package:winter_foodies/domain/repositories/login/login_repository.dart';
import 'package:winter_foodies/domain/usecases/login/login_use_case.dart';

final serviceLocator = GetIt.instance;
void initServiceLocator() {
  serviceLocator.registerLazySingleton<GetTokenApi>(() => GetTokenApi());
  serviceLocator
      .registerLazySingleton<LoginRepository>(() => LoginRepositoryImpl());
  serviceLocator.registerLazySingleton<LoginUseCase>(() => LoginUseCase());
}
