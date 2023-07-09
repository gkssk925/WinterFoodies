import 'package:get_it/get_it.dart';
import 'package:winter_foodies/data/data_sources/customer/login/get_token_api.dart';
import 'package:winter_foodies/data/data_sources/customer/mypage/get_mypage_config_api.dart';
import 'package:winter_foodies/data/data_sources/customer/mypage/get_mypage_info_api.dart';
import 'package:winter_foodies/data/data_sources/customer/mypage/get_zzim_list_api.dart';
import 'package:winter_foodies/data/repositories/customer/login/login_repository_impl.dart';
import 'package:winter_foodies/data/repositories/customer/mypage/get_mypage_config_repository_impl.dart';
import 'package:winter_foodies/data/repositories/customer/mypage/get_mypage_info_repository_impl.dart';
import 'package:winter_foodies/data/repositories/customer/mypage/get_zzim_list_repository_impl.dart';
import 'package:winter_foodies/domain/repositories/customer/login/login_repository.dart';
import 'package:winter_foodies/domain/repositories/customer/mypage/get_mypage_config_repository.dart';
import 'package:winter_foodies/domain/repositories/customer/mypage/get_mypage_info_repository.dart';
import 'package:winter_foodies/domain/repositories/customer/mypage/get_zzim_list_repository.dart';
import 'package:winter_foodies/domain/usecases/customer/login/login_use_case.dart';
import 'package:winter_foodies/domain/usecases/customer/mypage/get_mypage_config_use_case.dart';
import 'package:winter_foodies/domain/usecases/customer/mypage/get_mypage_info_use_case.dart';

final serviceLocator = GetIt.instance;
void initServiceLocator() {
  /**
   * API
   */
  serviceLocator.registerLazySingleton<GetTokenApi>(() => GetTokenApi());

  serviceLocator
      .registerLazySingleton<GetMyPageInfoApi>(() => GetMyPageInfoApi());
  serviceLocator
      .registerLazySingleton<GetMyPageConfigApi>(() => GetMyPageConfigApi());
  serviceLocator.registerLazySingleton<GetZzimListApi>(() => GetZzimListApi());

  /**
   * Repository
   */
  serviceLocator
      .registerLazySingleton<LoginRepository>(() => LoginRepositoryImpl());

  serviceLocator.registerLazySingleton<GetMyPageInfoRepository>(
      () => GetMyPageInfoRepositoryImpl());
  serviceLocator.registerLazySingleton<GetMyPageConfigRepository>(
      () => GetMyPageConfigRepositoryImpl());
  serviceLocator.registerLazySingleton<GetZzimListRepository>(
      () => GetZzimListRepositoryImpl());

  /**
   * UseCase
   */
  serviceLocator.registerLazySingleton<GetMyPageInfoUseCase>(
      () => GetMyPageInfoUseCase());

  serviceLocator.registerLazySingleton<GetMyPageConfigUseCase>(
      () => GetMyPageConfigUseCase());
}
