import 'package:winter_foodies/data/data_sources/customer/mypage/get_mypage_config_api.dart';
import 'package:winter_foodies/di/locator.dart';
import 'package:winter_foodies/domain/repositories/customer/mypage/get_mypage_config_repository.dart';

class GetMyPageConfigRepositoryImpl implements GetMyPageConfigRepository {
  GetMyPageConfigRepositoryImpl();

  @override
  Future<Map<dynamic, dynamic>?> fetch() async {
    GetMyPageConfigApi api = serviceLocator<GetMyPageConfigApi>();
    final Map<dynamic, dynamic>? result = await api.fetch();
    return result;
  }
}
