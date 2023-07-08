import 'package:bloc/bloc.dart';
import 'package:winter_foodies/core/utils/string_util.dart';
import 'package:winter_foodies/domain/usecases/customer/login/login_use_case.dart';
import 'package:winter_foodies/data/models/param/get_token_param.dart';
import 'package:winter_foodies/data/models/param/login_param.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginInProgress()) {
    on<LoginRequested>((event, emit) async {
      String token = await LoginUseCase().call(event.getTokenParam);
      if (StringUtil.isValidString(token)) {
        emit(const LoginSuccess());
      } else {
        emit(const LoginFail());
      }
    });

    on<LogoutRequested>((event, emit) async {
      // await LogoutUseCase().call();
      emit(const LogoutSuccess());
    });

    on<AutoLoginRequested>((event, emit) async {
      // var autoLoginResult = await AutoLoginUseCase().call();
      // if ('200' == autoLoginResult['status_code']) {
      //   emit(const LoginSuccess());
      // } else {
      //   emit(const AutoLoginFail());
      // }
    });

    on<LoginInit>((event, emit) async {
      emit(const LoginInitial());
    });
  }
}
