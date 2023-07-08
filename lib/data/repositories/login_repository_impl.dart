import 'package:winter_foodies/data/data_sources/login/get_token_api.dart';
import 'package:winter_foodies/data/models/param/get_token_param.dart';
import 'package:winter_foodies/di/locator.dart';
import 'package:winter_foodies/domain/repositories/login/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  LoginRepositoryImpl();

  @override
  Future<String> fetch(GetTokenParam getTokenParam) async {
    GetTokenApi api = serviceLocator<GetTokenApi>();
    final Map<dynamic, dynamic>? result = await api.fetch(getTokenParam);
    return result?['token'] ?? '';
  }
}
