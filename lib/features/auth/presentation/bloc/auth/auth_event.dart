import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

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
  File? profileImage;

  SignupEvent(this.userName, this.email, this.password, this.profileImage);

  @override
  List<Object?> get props => [userName, email, password, profileImage];
}

class PickProfileImageEvent extends AuthEvent {
  final ImageSource source;

  const PickProfileImageEvent(this.source);

  @override
  List<Object?> get props => [source];
}
