import 'package:bloc/bloc.dart';
import 'package:winter_foodies/domain/usecases/login/login_use_case.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginInProgress()) {
    on<LoginRequested>((event, emit) async {
      bool success = await LoginUseCase().call();
      if (success) {
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
