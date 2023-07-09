part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.logEvent(String email, String password) = _loginEvent;
  const factory AuthEvent.signupEvent(
          String name, String email, String password, File? profileImage) =
      _signupEvent;
  const factory AuthEvent.pickProfileImage(ImageSource image) =
      _pickProfileImage;
}
