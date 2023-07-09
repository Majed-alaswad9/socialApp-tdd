part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.authInitial() = _AuthInitial;
  const factory AuthState.loading() = _loading;
  const factory AuthState.successLoginState(String message) =
      _successLoginState;
  const factory AuthState.errorLoginState(String message) = _errorLoginState;
  const factory AuthState.successSignupState(String message) =
      _successSignupState;
  const factory AuthState.errorSignupState(String message) = _errorSignupState;
  const factory AuthState.successCreateUserState(String message) =
      _successCreateUserState;
  const factory AuthState.errorCreateUserState(String message) =
      _errorCreateUserState;
  const factory AuthState.successPickProfileImageState(File image) =
      _successPickProfileImageState;
  const factory AuthState.errorPickProfileImageState(String message) =
      _errorPickProfileImageState;
}
