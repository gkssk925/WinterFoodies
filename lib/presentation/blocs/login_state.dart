part of 'login_bloc.dart';

abstract class LoginState {
  const LoginState();
}

class LoginInProgress extends LoginState {
  const LoginInProgress();
}

class LoginInitial extends LoginState {
  const LoginInitial();
}

class LoginSuccess extends LoginState {
  const LoginSuccess();
}

class LoginFail extends LoginState {
  const LoginFail();
}

class AutoLoginFail extends LoginState {
  const AutoLoginFail();
}

class LogoutSuccess extends LoginState {
  const LogoutSuccess();
}
