import 'dart:io';


abstract class AddDeleteEditPostState {
  const AddDeleteEditPostState();
}

class AddDeleteEditPostInitial extends AddDeleteEditPostState {}

class LoadingAddDeleteEditPostState extends AddDeleteEditPostState {}

class SuccessAddDeleteEditPostState extends AddDeleteEditPostState {
  final String message;

  const SuccessAddDeleteEditPostState({required this.message});
}

class ErrorAddDeleteEditPostState extends AddDeleteEditPostState {
  final String message;

  const ErrorAddDeleteEditPostState({required this.message});
}

class SuccessPickImageState extends AddDeleteEditPostState {
  final File image;
  SuccessPickImageState(this.image);
}

class ErrorPickImageState extends AddDeleteEditPostState {
  const ErrorPickImageState();
}

class SuccessGetInfoUSerState extends AddDeleteEditPostState {
  final String userName;
  String? userImage;

  SuccessGetInfoUSerState({required this.userName, this.userImage});
}

class ErrorGetInfoUserState extends AddDeleteEditPostState{
  final String error;

  ErrorGetInfoUserState(this.error);
}
