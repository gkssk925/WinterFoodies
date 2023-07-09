import 'package:winter_foodies/di/locator.dart';
import 'package:winter_foodies/domain/repositories/customer/mypage/get_zzim_list_repository.dart';

class GetMyPageZzimListUseCase {
  GetMyPageZzimListUseCase();

  Future<Map<dynamic, dynamic>?> call() async {
    GetZzimListRepository repository = serviceLocator<GetZzimListRepository>();
    final result = await repository.fetch();
    return result;
  }
}
