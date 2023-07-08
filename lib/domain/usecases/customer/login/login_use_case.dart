import 'package:winter_foodies/data/models/param/get_token_param.dart';
import 'package:winter_foodies/data/models/param/login_param.dart';
import 'package:winter_foodies/di/locator.dart';
import 'package:winter_foodies/domain/repositories/customer/login/login_repository.dart';

class LoginUseCase {
  LoginUseCase();

  Future<String> call(GetTokenParam getTokenParam) async {
    LoginRepository repository = serviceLocator<LoginRepository>();
    final result = await repository.fetch(getTokenParam);
    return result;
  }
}
