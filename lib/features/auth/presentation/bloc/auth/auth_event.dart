import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

class LoginEvent extends AuthEvent {
  final String email;
  final String password;

  const LoginEvent(this.email, this.password);

  @override
  List<Object?> get props => [email, password];
}

class SignupEvent extends AuthEvent {
  final String userName;
  final String email;
  final String password;

  const SignupEvent(this.userName, this.email, this.password);

  @override
  List<Object?> get props => [userName, email, password];
}

class CreateUserEvent extends AuthEvent {
  final String userName;
  final String email;
  final String password;
  final String uId;

  const CreateUserEvent(this.userName, this.email, this.password, this.uId);

  @override
  List<Object?> get props => [userName, email, password];
}
