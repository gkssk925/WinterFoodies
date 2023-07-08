import 'package:winter_foodies/di/locator.dart';
import 'package:winter_foodies/domain/repositories/customer/mypage/get_mypage_config_repository.dart';

class GetMyPageConfigUseCase {
  GetMyPageConfigUseCase();

  Future<Map<dynamic, dynamic>?> call() async {
    GetMyPageConfigRepository repository =
        serviceLocator<GetMyPageConfigRepository>();
    final result = await repository.fetch();
    return result;
  }
}
