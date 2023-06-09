part of 'login_bloc.dart';

abstract class LoginEvent {
  const LoginEvent();
}

class LoginRequested extends LoginEvent {
  final GetTokenParam getTokenParam;

  const LoginRequested({required this.getTokenParam});
}

class AutoLoginRequested extends LoginEvent {
  const AutoLoginRequested();
}

class LogoutRequested extends LoginEvent {
  const LogoutRequested();
}

class LoginInit extends LoginEvent{
  const LoginInit();
}

class ChangeToLoginSuccess extends LoginEvent{
  const ChangeToLoginSuccess();
}
