import 'dart:io';

import 'package:equatable/equatable.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object?> get props => [];
}

class AuthInitial extends AuthState {}

class LoadingLoginState extends AuthState {}

class SuccessLoginState extends AuthState {
  final String message;

  const SuccessLoginState(this.message);

  @override
  List<Object?> get props => [message];
}

class ErrorLoginState extends AuthState {
  final String error;

  const ErrorLoginState(this.error);

  @override
  List<Object?> get props => [error];
}

class SuccessSignupState extends AuthState {
  final String message;
  final String userName;
  File? profileImage;
  final String email;
  final String password;
  final String uId;

  SuccessSignupState(this.message, this.userName, this.profileImage, this.email,
      this.password, this.uId);

  @override
  List<Object?> get props => [message];
}

class ErrorSignupState extends AuthState {
  final String error;

  const ErrorSignupState(this.error);

  @override
  List<Object?> get props => [error];
}

class SuccessCreateUserState extends AuthState {
  final String message;

  const SuccessCreateUserState(this.message);

  @override
  List<Object?> get props => [message];
}

class ErrorCreateUserState extends AuthState {
  final String error;

  const ErrorCreateUserState(this.error);

  @override
  List<Object?> get props => [error];
}

class SuccessPickImageState extends AuthState {
  final File image;
  const SuccessPickImageState(this.image);
}

class ErrorPickImageState extends AuthState {
  const ErrorPickImageState();
}
