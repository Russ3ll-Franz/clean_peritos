part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState.initial(
      {@Default(Username.pure()) Username username,
      @Default(Password.pure()) Password password,
      @Default(FormzStatus.pure) FormzStatus status}) = _Initial;
}
