import 'package:winter_foodies/data/data_sources/customer/mypage/get_zzim_list_api.dart';
import 'package:winter_foodies/di/locator.dart';
import 'package:winter_foodies/domain/repositories/customer/mypage/get_zzim_list_repository.dart';

class GetZzimListRepositoryImpl implements GetZzimListRepository {
  GetZzimListRepositoryImpl();

  @override
  Future<Map<dynamic, dynamic>?> fetch() async {
    GetZzimListApi api = serviceLocator<GetZzimListApi>();
    final Map<dynamic, dynamic>? result = await api.fetch();
    return result;
  }
}
