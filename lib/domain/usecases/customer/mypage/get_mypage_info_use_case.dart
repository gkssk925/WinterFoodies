import 'package:winter_foodies/di/locator.dart';
import 'package:winter_foodies/domain/repositories/customer/mypage/get_mypage_info_repository.dart';

class GetMyPageInfoUserCase {
  GetMyPageInfoUserCase();

  Future<Map<dynamic, dynamic>?> call() async {
    GetMyPageInfoRepository repository = serviceLocator<GetMyPageInfoRepository>();
    final result = await repository.fetch();
    return result;
  }
}
