import 'package:winter_foodies/data/data_sources/customer/mypage/get_mypage_info.dart';
import 'package:winter_foodies/di/locator.dart';
import 'package:winter_foodies/domain/repositories/customer/mypage/get_mypage_info_repository.dart';

class GetMyPageInfoRepositoryImpl implements GetMyPageInfoRepository {
  GetMyPageInfoRepositoryImpl();

  @override
  Future<Map<dynamic, dynamic>?> fetch() async {
    GetMyPageInfoApi api = serviceLocator<GetMyPageInfoApi>();
    final Map<dynamic, dynamic>? result = await api.fetch();
    return result;
  }
}
